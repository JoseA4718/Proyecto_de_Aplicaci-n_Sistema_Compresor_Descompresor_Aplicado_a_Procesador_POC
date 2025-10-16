
#include "c.h"
#define NODEPTR_TYPE Node
#define OP_LABEL(p) ((p)->op)
#define LEFT_CHILD(p) ((p)->x.kids[0])
#define RIGHT_CHILD(p) ((p)->x.kids[1])
#define STATE_LABEL(p) ((p)->x.state)
#define PANIC print

#define ALLOC(n) (talloc(n))
#ifndef sparc_PANIC
#define sparc_PANIC	PANIC
#endif /* sparc_PANIC */
#ifdef __STDC__
extern void abort(void);
#else
extern void abort();
#endif
#define sparc_assert(x,y)	if(!(x)) {y; abort();}
static short sparc_r1_nts[] ={ 0 };
static short sparc_r2_nts[] ={ 7, 0 };
static short sparc_r5_nts[] ={ 6, 0 };
static short sparc_r7_nts[] ={ 2, 0 };
static short sparc_r13_nts[] ={ 6, 5, 0 };
static short sparc_r15_nts[] ={ 4, 0 };
static short sparc_r18_nts[] ={ 3, 0 };
static short sparc_r38_nts[] ={ 6, 6, 0 };
static short sparc_r39_nts[] ={ 4, 6, 0 };
static short sparc_r116_nts[] ={ 3, 6, 0 };
short *sparc_nts[] = {
	0,
	sparc_r1_nts,
	sparc_r2_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r7_nts,
	sparc_r5_nts,
	sparc_r2_nts,
	sparc_r5_nts,
	sparc_r1_nts,
	sparc_r5_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r18_nts,
	sparc_r5_nts,
	sparc_r18_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r18_nts,
	sparc_r5_nts,
	sparc_r18_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r2_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r38_nts,
	sparc_r39_nts,
	sparc_r15_nts,
	sparc_r7_nts,
	sparc_r5_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r5_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r1_nts,
	sparc_r18_nts,
	sparc_r5_nts,
	sparc_r18_nts,
	sparc_r18_nts,
	sparc_r18_nts,
	sparc_r18_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r116_nts,
	sparc_r38_nts,
	sparc_r116_nts,
	sparc_r116_nts,
	sparc_r116_nts,
	sparc_r116_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r13_nts,
	sparc_r1_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r1_nts,
	sparc_r1_nts,
	sparc_r5_nts,
	sparc_r1_nts,
	sparc_r5_nts,
	sparc_r1_nts,
	sparc_r5_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r1_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r1_nts,
	sparc_r5_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r38_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r5_nts,
	sparc_r5_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
	sparc_r15_nts,
};
static unsigned char sparc_ADDD_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_ADDF_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_ADDI_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_ADDP_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_ADDU_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_ASGNB_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_ASGNC_transition[3][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */,
{    0,    2}	/* row 2 */
};
static unsigned char sparc_ASGND_transition[3][2] = {
{    0,    0}	/* row 0 */,
{    0,    2}	/* row 1 */,
{    0,    1}	/* row 2 */
};
static unsigned char sparc_ASGNF_transition[3][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */,
{    0,    2}	/* row 2 */
};
static unsigned char sparc_ASGNI_transition[3][2] = {
{    0,    0}	/* row 0 */,
{    0,    2}	/* row 1 */,
{    0,    1}	/* row 2 */
};
static unsigned char sparc_ASGNP_transition[3][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */,
{    0,    2}	/* row 2 */
};
static unsigned char sparc_ASGNS_transition[3][2] = {
{    0,    0}	/* row 0 */,
{    0,    2}	/* row 1 */,
{    0,    1}	/* row 2 */
};
static unsigned char sparc_BANDU_transition[2][4] = {
{    0,    0,    0,    0}	/* row 0 */,
{    0,    2,    1,    1}	/* row 1 */
};
static unsigned char sparc_BORU_transition[2][4] = {
{    0,    0,    0,    0}	/* row 0 */,
{    0,    1,    2,    2}	/* row 1 */
};
static unsigned char sparc_BXORU_transition[2][4] = {
{    0,    0,    0,    0}	/* row 0 */,
{    0,    1,    2,    2}	/* row 1 */
};
static unsigned char sparc_CALLB_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_DIVD_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_DIVF_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_DIVI_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_DIVU_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_EQD_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_EQF_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_EQI_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_GED_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_GEF_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_GEI_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_GEU_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_GTD_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_GTF_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_GTI_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_GTU_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_LED_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_LEF_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_LEI_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_LEU_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_LSHI_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_LSHU_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_LTD_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_LTF_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_LTI_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_LTU_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_MODI_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_MODU_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_MULD_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_MULF_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_MULI_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_MULU_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_NED_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_NEF_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_NEI_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_RSHI_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_RSHU_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_SUBD_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_SUBF_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_SUBI_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_SUBP_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_SUBU_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_CASGNF_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_CASGND_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_CASGNC_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_CASGNS_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_CASGNI_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_CASGNP_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_MASGNF_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_MASGND_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_MASGNC_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_MASGNS_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_MASGNI_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_MASGNP_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static unsigned char sparc_MASGNB_transition[2][2] = {
{    0,    0}	/* row 0 */,
{    0,    1}	/* row 1 */
};
static struct {
	unsigned int f8:2;
	unsigned int f9:2;
	unsigned int f10:4;
	unsigned int f11:8;
	unsigned int f12:2;
	unsigned int f13:2;
	unsigned int f14:3;
	unsigned int f15:2;
	unsigned int f16:7;
} sparc_plank_0[] = {
	{   0,   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 0 */
	{   2,   2,   0, 170,   2,   1,   5,   0,  21,},	/* row 1 */
	{   2,   2,   0, 123,   2,   1,   5,   0,  21,},	/* row 2 */
	{   2,   2,   0, 124,   2,   1,   5,   0,  21,},	/* row 3 */
	{   2,   2,   0, 171,   2,   1,   4,   0,  21,},	/* row 4 */
	{   2,   2,   0,   1,   2,   1,   2,   0,  21,},	/* row 5 */
	{   2,   2,   0, 161,   2,   1,   3,   0,  21,},	/* row 6 */
	{   2,   1,   0, 164,   2,   2,   5,   2,  21,},	/* row 7 */
	{   2,   2,   0, 163,   2,   1,   6,   0,  21,},	/* row 8 */
	{   2,   2,   0,  31,   2,   1,   1,   0,  21,},	/* row 9 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  20,},	/* row 10 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  29,},	/* row 11 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  31,},	/* row 12 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  30,},	/* row 13 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  62,},	/* row 14 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  60,},	/* row 15 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  28,},	/* row 16 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  55,},	/* row 17 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  49,},	/* row 18 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  52,},	/* row 19 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  58,},	/* row 20 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  59,},	/* row 21 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  53,},	/* row 22 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  51,},	/* row 23 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  57,},	/* row 24 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  56,},	/* row 25 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  50,},	/* row 26 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  48,},	/* row 27 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  54,},	/* row 28 */
	{   2,   2,   0,  43,   2,   1,   5,   0,  21,},	/* row 29 */
	{   2,   2,   0, 116,   2,   1,   5,   0,  21,},	/* row 30 */
	{   2,   2,   0, 114,   2,   1,   5,   0,  21,},	/* row 31 */
	{   2,   2,   0, 160,   2,   1,   5,   0,  21,},	/* row 32 */
	{   2,   2,   0, 160,   2,   1,   5,   0,  21,},	/* row 33 */
	{   2,   2,   0, 162,   2,   1,   5,   0,  21,},	/* row 34 */
	{   2,   2,   0, 113,   2,   1,   5,   0,  21,},	/* row 35 */
	{   2,   2,   0, 115,   2,   1,   5,   0,  21,},	/* row 36 */
	{   2,   2,   0, 158,   2,   1,   5,   0,  21,},	/* row 37 */
	{   2,   2,   0, 159,   2,   1,   5,   0,  21,},	/* row 38 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  27,},	/* row 39 */
	{   2,   2,   0, 157,   2,   1,   5,   0,  21,},	/* row 40 */
	{   2,   2,   0, 156,   2,   1,   5,   0,  21,},	/* row 41 */
	{   2,   2,   0, 155,   2,   1,   5,   0,  21,},	/* row 42 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  26,},	/* row 43 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  33,},	/* row 44 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  32,},	/* row 45 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  63,},	/* row 46 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  35,},	/* row 47 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  36,},	/* row 48 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  34,},	/* row 49 */
	{   2,   1,   6, 137,   1,   2,   5,   1,  21,},	/* row 50 */
	{   2,   1,   1, 137,   1,   2,   5,   1,  21,},	/* row 51 */
	{   2,   1,   8, 137,   1,   2,   5,   1,  21,},	/* row 52 */
	{   2,   1,   5, 137,   1,   2,   5,   1,  21,},	/* row 53 */
	{   2,   1,   7, 137,   1,   2,   5,   1,  21,},	/* row 54 */
	{   2,   2,   0, 154,   2,   1,   5,   0,  21,},	/* row 55 */
	{   2,   2,   0, 153,   2,   1,   5,   0,  21,},	/* row 56 */
	{   2,   2,   0, 151,   2,   1,   5,   0,  21,},	/* row 57 */
	{   2,   2,   0, 152,   2,   1,   5,   0,  21,},	/* row 58 */
	{   2,   2,   0, 150,   2,   1,   5,   0,  21,},	/* row 59 */
	{   2,   2,   0, 149,   2,   1,   5,   0,  21,},	/* row 60 */
	{   2,   2,   0, 148,   2,   1,   5,   0,  21,},	/* row 61 */
	{   2,   2,   0, 112,   2,   1,   5,   0,  21,},	/* row 62 */
	{   2,   2,   0, 147,   2,   1,   5,   0,  21,},	/* row 63 */
	{   2,   2,   0, 111,   2,   1,   5,   0,  21,},	/* row 64 */
	{   2,   2,   0, 110,   2,   1,   5,   0,  21,},	/* row 65 */
	{   2,   2,   0, 106,   2,   1,   5,   0,  21,},	/* row 66 */
	{   2,   2,   0, 145,   2,   1,   5,   0,  21,},	/* row 67 */
	{   2,   2,   0, 146,   2,   1,   5,   0,  21,},	/* row 68 */
	{   2,   2,   0, 143,   2,   1,   5,   0,  21,},	/* row 69 */
	{   2,   2,   0, 144,   2,   1,   5,   0,  21,},	/* row 70 */
	{   2,   2,   0, 109,   2,   1,   5,   0,  21,},	/* row 71 */
	{   2,   2,   0, 107,   2,   1,   5,   0,  21,},	/* row 72 */
	{   2,   2,   0, 105,   2,   1,   5,   0,  21,},	/* row 73 */
	{   2,   2,   0, 108,   2,   1,   5,   0,  21,},	/* row 74 */
	{   2,   2,   0, 117,   2,   1,   5,   0,  21,},	/* row 75 */
	{   2,   2,   0, 118,   2,   1,   5,   0,  21,},	/* row 76 */
	{   2,   2,   0,  97,   2,   1,   5,   0,  21,},	/* row 77 */
	{   2,   2,   0,  96,   2,   1,   5,   0,  21,},	/* row 78 */
	{   2,   2,   0, 169,   2,   1,   5,   0,  21,},	/* row 79 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  67,},	/* row 80 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  68,},	/* row 81 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  18,},	/* row 82 */
	{   2,   2,   0,  69,   2,   1,   5,   0,  21,},	/* row 83 */
	{   2,   2,   0,  76,   2,   1,   5,   0,  21,},	/* row 84 */
	{   2,   2,   0,  58,   2,   1,   5,   0,  21,},	/* row 85 */
	{   2,   2,   0,  57,   2,   1,   5,   0,  21,},	/* row 86 */
	{   2,   2,   0,  73,   2,   1,   5,   0,  21,},	/* row 87 */
	{   2,   2,   0,  71,   2,   1,   5,   0,  21,},	/* row 88 */
	{   2,   2,   0,  74,   2,   1,   5,   0,  21,},	/* row 89 */
	{   2,   2,   0,  72,   2,   1,   5,   0,  21,},	/* row 90 */
	{   2,   2,   0,  70,   2,   1,   5,   0,  21,},	/* row 91 */
	{   0,   0,   0,   0,   0,   0,   0,   0,   1,},	/* row 92 */
	{   0,   0,   0,   0,   0,   0,   0,   0,   2,},	/* row 93 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  15,},	/* row 94 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  11,},	/* row 95 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  44,},	/* row 96 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  19,},	/* row 97 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  61,},	/* row 98 */
	{   0,   0,   0,   0,   0,   0,   0,   0,   3,},	/* row 99 */
	{   0,   0,   0,   0,   0,   0,   0,   0,   4,},	/* row 100 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  16,},	/* row 101 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  12,},	/* row 102 */
	{   2,   1,   4,  91,   1,   2,   5,   1,  21,},	/* row 103 */
	{   2,   1,   3, 137,   1,   2,   5,   1,  21,},	/* row 104 */
	{   2,   1,   2, 137,   1,   2,   5,   1,  21,},	/* row 105 */
	{   2,   1,   9, 137,   1,   2,   5,   1,  21,},	/* row 106 */
	{   2,   2,   0, 104,   2,   1,   5,   0,  21,},	/* row 107 */
	{   2,   2,   0,  86,   2,   1,   5,   0,  21,},	/* row 108 */
	{   2,   2,   0,  80,   2,   1,   5,   0,  21,},	/* row 109 */
	{   2,   2,   0,  89,   2,   1,   5,   0,  21,},	/* row 110 */
	{   2,   2,   0,  83,   2,   1,   5,   0,  21,},	/* row 111 */
	{   2,   2,   0,  84,   2,   1,   5,   0,  21,},	/* row 112 */
	{   2,   2,   0,  90,   2,   1,   5,   0,  21,},	/* row 113 */
	{   2,   2,   0,  82,   2,   1,   5,   0,  21,},	/* row 114 */
	{   2,   2,   0,  88,   2,   1,   5,   0,  21,},	/* row 115 */
	{   2,   2,   0,  81,   2,   1,   5,   0,  21,},	/* row 116 */
	{   2,   2,   0,  87,   2,   1,   5,   0,  21,},	/* row 117 */
	{   2,   2,   0,  79,   2,   1,   5,   0,  21,},	/* row 118 */
	{   2,   2,   0,  85,   2,   1,   5,   0,  21,},	/* row 119 */
	{   2,   2,   0,  63,   2,   1,   5,   0,  21,},	/* row 120 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  25,},	/* row 121 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  24,},	/* row 122 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  23,},	/* row 123 */
	{   0,   0,   0,   0,   0,   0,   0,   0,   5,},	/* row 124 */
	{   0,   0,   0,   0,   0,   0,   0,   0,   6,},	/* row 125 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  13,},	/* row 126 */
	{   0,   0,   0,   0,   0,   0,   0,   0,   9,},	/* row 127 */
	{   2,   2,   0,  54,   2,   1,   5,   0,  21,},	/* row 128 */
	{   2,   2,   0,  98,   2,   1,   5,   0,  21,},	/* row 129 */
	{   2,   2,   0, 103,   2,   1,   5,   0,  21,},	/* row 130 */
	{   2,   2,   0, 142,   2,   1,   5,   0,  21,},	/* row 131 */
	{   2,   2,   0, 141,   2,   1,   5,   0,  21,},	/* row 132 */
	{   2,   2,   0, 101,   2,   1,   5,   0,  21,},	/* row 133 */
	{   2,   2,   0, 100,   2,   1,   5,   0,  21,},	/* row 134 */
	{   2,   2,   0, 102,   2,   1,   5,   0,  21,},	/* row 135 */
	{   2,   2,   0,  99,   2,   1,   5,   0,  21,},	/* row 136 */
	{   2,   2,   0,  42,   2,   1,   5,   0,  21,},	/* row 137 */
	{   2,   2,   0,  35,   2,   1,   5,   0,  21,},	/* row 138 */
	{   2,   2,   0,  36,   2,   1,   5,   0,  21,},	/* row 139 */
	{   0,   0,   0,   0,   0,   0,   0,   0,   7,},	/* row 140 */
	{   0,   0,   0,   0,   0,   0,   0,   0,   8,},	/* row 141 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  14,},	/* row 142 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  10,},	/* row 143 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  43,},	/* row 144 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  39,},	/* row 145 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  38,},	/* row 146 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  37,},	/* row 147 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  41,},	/* row 148 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  42,},	/* row 149 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  40,},	/* row 150 */
	{   2,   2,   0,  61,   2,   1,   5,   0,  21,},	/* row 151 */
	{   2,   2,   0,  65,   2,   1,   5,   0,  21,},	/* row 152 */
	{   2,   2,   0,  59,   2,   1,   5,   0,  21,},	/* row 153 */
	{   2,   2,   0,  95,   2,   1,   5,   0,  21,},	/* row 154 */
	{   2,   2,   0,  94,   2,   1,   5,   0,  21,},	/* row 155 */
	{   2,   2,   0,  41,   2,   1,   5,   0,  21,},	/* row 156 */
	{   2,   2,   0,  40,   2,   1,   5,   0,  21,},	/* row 157 */
	{   2,   2,   0,  21,   2,   1,   5,   0,  21,},	/* row 158 */
	{   2,   2,   0, 119,   2,   1,   5,   0,  21,},	/* row 159 */
	{   2,   2,   0, 120,   2,   1,   5,   0,  21,},	/* row 160 */
	{   2,   2,   0,  93,   2,   1,   5,   0,  21,},	/* row 161 */
	{   2,   2,   0,  11,   2,   1,   5,   0,  21,},	/* row 162 */
	{   2,   2,   0,  17,   2,   1,   5,   0,  21,},	/* row 163 */
	{   2,   2,   0,  18,   2,   1,   5,   0,  21,},	/* row 164 */
	{   2,   2,   0,  19,   2,   1,   5,   0,  21,},	/* row 165 */
	{   2,   2,   0,  15,   2,   1,   5,   0,  21,},	/* row 166 */
	{   2,   2,   0,  13,   2,   1,   5,   0,  21,},	/* row 167 */
	{   2,   2,   0,  16,   2,   1,   5,   0,  21,},	/* row 168 */
	{   2,   2,   0,  14,   2,   1,   5,   0,  21,},	/* row 169 */
	{   2,   2,   0,  12,   2,   1,   5,   0,  21,},	/* row 170 */
	{   2,   2,   0,  20,   2,   1,   5,   0,  21,},	/* row 171 */
	{   2,   2,   0,  22,   2,   1,   5,   0,  21,},	/* row 172 */
	{   2,   2,   0,  28,   2,   1,   5,   0,  21,},	/* row 173 */
	{   2,   2,   0,  29,   2,   1,   5,   0,  21,},	/* row 174 */
	{   2,   2,   0,  30,   2,   1,   5,   0,  21,},	/* row 175 */
	{   2,   2,   0,  26,   2,   1,   5,   0,  21,},	/* row 176 */
	{   2,   2,   0,  24,   2,   1,   5,   0,  21,},	/* row 177 */
	{   2,   2,   0,  27,   2,   1,   5,   0,  21,},	/* row 178 */
	{   2,   2,   0,  25,   2,   1,   5,   0,  21,},	/* row 179 */
	{   2,   2,   0,  23,   2,   1,   5,   0,  21,},	/* row 180 */
	{   2,   2,   0,  92,   2,   1,   5,   0,  21,},	/* row 181 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  64,},	/* row 182 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  66,},	/* row 183 */
	{   2,   2,   0, 140,   2,   1,   5,   0,  21,},	/* row 184 */
	{   2,   2,   0, 139,   2,   1,   5,   0,  21,},	/* row 185 */
	{   2,   2,   0, 138,   2,   1,   5,   0,  21,},	/* row 186 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  17,},	/* row 187 */
	{   2,   2,   0,  64,   2,   1,   5,   0,  21,},	/* row 188 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  65,},	/* row 189 */
	{   2,   2,   0,  68,   2,   1,   5,   0,  21,},	/* row 190 */
	{   2,   2,   0,  39,   2,   1,   5,   0,  21,},	/* row 191 */
	{   2,   2,   0,   2,   2,   1,   5,   0,  21,},	/* row 192 */
	{   2,   2,   0,   8,   2,   1,   5,   0,  21,},	/* row 193 */
	{   2,   2,   0,   9,   2,   1,   5,   0,  21,},	/* row 194 */
	{   2,   2,   0,  10,   2,   1,   5,   0,  21,},	/* row 195 */
	{   2,   2,   0,   6,   2,   1,   5,   0,  21,},	/* row 196 */
	{   2,   2,   0,   4,   2,   1,   5,   0,  21,},	/* row 197 */
	{   2,   2,   0,   7,   2,   1,   5,   0,  21,},	/* row 198 */
	{   2,   2,   0,   5,   2,   1,   5,   0,  21,},	/* row 199 */
	{   2,   2,   0,   3,   2,   1,   5,   0,  21,},	/* row 200 */
	{   2,   2,   0,  62,   2,   1,   5,   0,  21,},	/* row 201 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  46,},	/* row 202 */
	{   2,   2,   0,  67,   2,   1,   5,   0,  21,},	/* row 203 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  47,},	/* row 204 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  45,},	/* row 205 */
	{   0,   0,   0,   0,   0,   0,   0,   0,  22,},	/* row 206 */
	{   2,   2,   0,  44,   2,   1,   5,   0,  21,},	/* row 207 */
	{   2,   2,   0,  50,   2,   1,   5,   0,  21,},	/* row 208 */
	{   2,   2,   0,  51,   2,   1,   5,   0,  21,},	/* row 209 */
	{   2,   2,   0,  52,   2,   1,   5,   0,  21,},	/* row 210 */
	{   2,   2,   0,  48,   2,   1,   5,   0,  21,},	/* row 211 */
	{   2,   2,   0,  46,   2,   1,   5,   0,  21,},	/* row 212 */
	{   2,   2,   0,  49,   2,   1,   5,   0,  21,},	/* row 213 */
	{   2,   2,   0,  47,   2,   1,   5,   0,  21,},	/* row 214 */
	{   2,   2,   0,  45,   2,   1,   5,   0,  21,},	/* row 215 */
	{   2,   2,   0,  53,   2,   1,   5,   0,  21,},	/* row 216 */
	{   2,   2,   0,  37,   2,   1,   5,   0,  21,},	/* row 217 */
	{   2,   2,   0,  38,   2,   1,   5,   0,  21,},	/* row 218 */
	{   2,   2,   0, 132,   2,   1,   5,   0,  21,},	/* row 219 */
	{   2,   2,   0, 166,   2,   1,   5,   0,  21,},	/* row 220 */
	{   2,   2,   0, 167,   2,   1,   5,   0,  21,},	/* row 221 */
	{   2,   2,   0, 168,   2,   1,   5,   0,  21,},	/* row 222 */
	{   2,   2,   0, 136,   2,   1,   5,   0,  21,},	/* row 223 */
	{   2,   2,   0, 134,   2,   1,   5,   0,  21,},	/* row 224 */
	{   2,   2,   0, 165,   2,   1,   5,   0,  21,},	/* row 225 */
	{   2,   2,   0, 135,   2,   1,   5,   0,  21,},	/* row 226 */
	{   2,   2,   0, 133,   2,   1,   5,   0,  21,},	/* row 227 */
	{   2,   2,   0,  77,   2,   1,   5,   0,  21,},	/* row 228 */
	{   2,   2,   0, 129,   2,   1,   5,   0,  21,},	/* row 229 */
	{   2,   2,   0, 130,   2,   1,   5,   0,  21,},	/* row 230 */
	{   2,   2,   0, 131,   2,   1,   5,   0,  21,},	/* row 231 */
	{   2,   2,   0, 127,   2,   1,   5,   0,  21,},	/* row 232 */
	{   2,   2,   0, 125,   2,   1,   5,   0,  21,},	/* row 233 */
	{   2,   2,   0, 128,   2,   1,   5,   0,  21,},	/* row 234 */
	{   2,   2,   0, 126,   2,   1,   5,   0,  21,},	/* row 235 */
	{   2,   2,   0,  78,   2,   1,   5,   0,  21,},	/* row 236 */
	{   2,   2,   0,  75,   2,   1,   5,   0,  21,},	/* row 237 */
	{   2,   2,   0, 121,   2,   1,   5,   0,  21,},	/* row 238 */
	{   2,   2,   0, 122,   2,   1,   5,   0,  21,},	/* row 239 */
	{   2,   2,   0,  32,   2,   1,   5,   0,  21,},	/* row 240 */
	{   2,   2,   0,  33,   2,   1,   5,   0,  21,},	/* row 241 */
	{   2,   2,   0,  34,   2,   1,   5,   0,  21,},	/* row 242 */
	{   2,   2,   0,  55,   2,   1,   5,   0,  21,},	/* row 243 */
	{   2,   2,   0,  56,   2,   1,   5,   0,  21,},	/* row 244 */
	{   2,   2,   0,  66,   2,   1,   5,   0,  21,},	/* row 245 */
	{   2,   2,   0,  60,   2,   1,   5,   0,  21,},	/* row 246 */
	{   1,   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 247 */
};
static struct {
	unsigned int f0:2;
	unsigned int f1:1;
	unsigned int f2:2;
	unsigned int f3:3;
	unsigned int f4:2;
	unsigned int f5:2;
	unsigned int f6:2;
	unsigned int f7:2;
} sparc_plank_1[] = {
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 0 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 1 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 2 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 3 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 4 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 5 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 6 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 7 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 8 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 9 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 10 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 11 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 12 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 13 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 14 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 15 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 16 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 17 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 18 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 19 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 20 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 21 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 22 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 23 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 24 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 25 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 26 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 27 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 28 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 29 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 30 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 31 */
	{   1,   0,   1,   3,   2,   2,   1,   1,},	/* row 32 */
	{   1,   0,   1,   2,   2,   2,   1,   1,},	/* row 33 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 34 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 35 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 36 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 37 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 38 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 39 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 40 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 41 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 42 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 43 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 44 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 45 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 46 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 47 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 48 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 49 */
	{   1,   0,   1,   1,   1,   2,   1,   1,},	/* row 50 */
	{   1,   0,   1,   1,   1,   2,   1,   1,},	/* row 51 */
	{   1,   0,   1,   1,   1,   2,   1,   1,},	/* row 52 */
	{   1,   0,   1,   1,   1,   2,   1,   1,},	/* row 53 */
	{   1,   0,   1,   1,   1,   2,   1,   1,},	/* row 54 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 55 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 56 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 57 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 58 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 59 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 60 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 61 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 62 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 63 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 64 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 65 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 66 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 67 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 68 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 69 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 70 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 71 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 72 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 73 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 74 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 75 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 76 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 77 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 78 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 79 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 80 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 81 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 82 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 83 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 84 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 85 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 86 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 87 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 88 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 89 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 90 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 91 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 92 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 93 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 94 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 95 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 96 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 97 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 98 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 99 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 100 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 101 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 102 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 103 */
	{   1,   0,   1,   1,   1,   2,   1,   1,},	/* row 104 */
	{   1,   0,   1,   1,   1,   2,   1,   1,},	/* row 105 */
	{   1,   0,   1,   1,   1,   2,   1,   1,},	/* row 106 */
	{   1,   1,   1,   1,   2,   2,   1,   1,},	/* row 107 */
	{   1,   0,   1,   1,   2,   1,   2,   1,},	/* row 108 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 109 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 110 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 111 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 112 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 113 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 114 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 115 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 116 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 117 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 118 */
	{   1,   0,   1,   1,   2,   2,   1,   2,},	/* row 119 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 120 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 121 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 122 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 123 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 124 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 125 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 126 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 127 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 128 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 129 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 130 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 131 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 132 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 133 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 134 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 135 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 136 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 137 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 138 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 139 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 140 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 141 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 142 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 143 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 144 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 145 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 146 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 147 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 148 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 149 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 150 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 151 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 152 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 153 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 154 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 155 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 156 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 157 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 158 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 159 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 160 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 161 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 162 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 163 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 164 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 165 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 166 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 167 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 168 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 169 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 170 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 171 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 172 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 173 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 174 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 175 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 176 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 177 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 178 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 179 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 180 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 181 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 182 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 183 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 184 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 185 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 186 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 187 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 188 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 189 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 190 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 191 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 192 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 193 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 194 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 195 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 196 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 197 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 198 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 199 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 200 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 201 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 202 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 203 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 204 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 205 */
	{   0,   0,   0,   0,   0,   0,   0,   0,},	/* row 206 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 207 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 208 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 209 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 210 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 211 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 212 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 213 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 214 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 215 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 216 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 217 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 218 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 219 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 220 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 221 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 222 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 223 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 224 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 225 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 226 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 227 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 228 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 229 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 230 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 231 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 232 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 233 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 234 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 235 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 236 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 237 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 238 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 239 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 240 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 241 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 242 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 243 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 244 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 245 */
	{   1,   0,   1,   1,   2,   2,   1,   1,},	/* row 246 */
	{   0,   0,   2,   0,   0,   0,   0,   0,},	/* row 247 */
};
static short sparc_eruleMap[] = {
    0,    2,    1,    0,   48,   47,    3,   46,    6,    4,	/* 0-9 */
    0,    8,    7,    0,   49,   56,   55,   54,   53,   52,	/* 10-19 */
   51,   50,   57,    0,    9,   10,    0,  132,  237,  236,	/* 20-29 */
  235,  234,  233,  232,  231,  230,  229,  228,  227,  226,	/* 30-39 */
  225,  224,  223,  222,  221,  220,  219,  218,  217,  216,	/* 40-49 */
  215,  214,  213,  212,  211,  210,  209,  133,  134,  135,	/* 50-59 */
  136,  137,  138,  139,  201,  200,  199,  198,  197,  196,	/* 60-69 */
  195,  194,  193,  192,  191,  190,  189,  188,  187,  140,	/* 70-79 */
  154,  155,  156,  161,  162,  180,  179,  178,  176,  175,	/* 80-89 */
  174,  173,  172,  171,  170,  169,  168,  167,  166,  165,	/* 90-99 */
  164,  260,  163,  259,  258,  103,  102,  101,  100,   99,	/* 100-109 */
   98,   97,   96,   95,   94,   93,   92,   91,   90,   89,	/* 110-119 */
   88,   87,   86,   85,   84,   83,   82,   81,   80,   79,	/* 120-129 */
   78,   77,   76,   75,   74,   73,   72,   71,   70,   69,	/* 130-139 */
   68,   67,   66,   65,   64,   63,   62,   61,   60,   59,	/* 140-149 */
   58,  257,  256,  255,  254,  253,  252,  251,  250,  249,	/* 150-159 */
  248,  247,  246,   35,   34,   33,   32,   31,   30,   29,	/* 160-169 */
   28,   27,   26,   25,   24,   23,   22,   21,   20,   19,	/* 170-179 */
   18,   17,   16,   15,   14,   13,   12,  157,  177,  141,	/* 180-189 */
   11,  245,  244,  243,  242,  241,  240,  131,    0,  149,	/* 190-199 */
  148,  147,  146,  145,  144,  143,  142,  113,  112,  111,	/* 200-209 */
  110,  109,  108,  107,  106,  105,  104,  160,  159,   45,	/* 210-219 */
   44,   43,   42,   41,   40,   39,   38,  158,   37,   36,	/* 220-229 */
  182,  183,  184,  185,  186,  202,  203,  204,  205,  206,	/* 230-239 */
  207,  208,  238,  130,  129,  128,  127,  126,  125,  124,	/* 240-249 */
  123,  122,  121,  120,  119,  118,  117,  116,  115,  239,	/* 250-259 */
  114,  181,  153,    5,  152,  151,  150
};
#define sparc_stmt_rule(state)	sparc_eruleMap[sparc_plank_0[state].f16 +198]
#define sparc_acon_rule(state)	sparc_eruleMap[sparc_plank_0[state].f15 +0]
#define sparc_addr_rule(state)	sparc_eruleMap[sparc_plank_0[state].f14 +3]
#define sparc_ar_rule(state)	sparc_eruleMap[sparc_plank_0[state].f13 +10]
#define sparc_rc_rule(state)	sparc_eruleMap[sparc_plank_0[state].f12 +23]
#define sparc_reg_rule(state)	sparc_eruleMap[sparc_plank_0[state].f11 +26]
#define sparc_con_rule(state)	sparc_eruleMap[sparc_plank_0[state].f10 +13]

#ifdef __STDC__
int sparc_rule(int state, int goalnt) {
#else
int sparc_rule(state, goalnt) int state; int goalnt; {
#endif
	sparc_assert(state >= 0 && state < 248, sparc_PANIC("Bad state %d passed to sparc_rule\n", state));
	switch(goalnt) {
	case 1:
		return sparc_stmt_rule(state);
	case 2:
		return sparc_acon_rule(state);
	case 3:
		return sparc_addr_rule(state);
	case 4:
		return sparc_ar_rule(state);
	case 5:
		return sparc_rc_rule(state);
	case 6:
		return sparc_reg_rule(state);
	case 7:
		return sparc_con_rule(state);
	default:
		sparc_PANIC("Unknown nonterminal %d in sparc_rule;\n", goalnt);
		abort();
		return 0;
	}
}

int sparc_TEMP;
#define sparc_ADDD_state(l,r)	( (sparc_TEMP = sparc_ADDD_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 1 : 0 )
#define sparc_ADDF_state(l,r)	( (sparc_TEMP = sparc_ADDF_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 2 : 0 )
#define sparc_ADDI_state(l,r)	( (sparc_TEMP = sparc_ADDI_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 3 : 0 )
#define sparc_ADDP_state(l,r)	( (sparc_TEMP = sparc_ADDP_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 4 : 0 )
#define sparc_ADDRFP_state	6
#define sparc_ADDRGP_state	7
#define sparc_ADDRLP_state	8
#define sparc_BIGLP_state	34
#define sparc_ADDU_state(l,r)	( (sparc_TEMP = sparc_ADDU_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 8 : 0 )
#define sparc_ARGB_state(l)	( (sparc_TEMP = sparc_plank_1[l].f1) ? sparc_TEMP + 10 : 0 )
#define sparc_ARGD_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 11 : 0 )
#define sparc_ARGF_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 12 : 0 )
#define sparc_ARGI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 13 : 0 )
#define sparc_ARGP_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 14 : 0 )
#define sparc_ASGNB_state(l,r)	( (sparc_TEMP = sparc_ASGNB_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 15 : 0 )
#define sparc_ASGNC_state(l,r)	( (sparc_TEMP = sparc_ASGNC_transition[sparc_plank_1[l].f2][sparc_plank_1[r].f0]) ? sparc_TEMP + 16 : 0 )
#define sparc_ASGND_state(l,r)	( (sparc_TEMP = sparc_ASGND_transition[sparc_plank_1[l].f2][sparc_plank_1[r].f0]) ? sparc_TEMP + 18 : 0 )
#define sparc_ASGNF_state(l,r)	( (sparc_TEMP = sparc_ASGNF_transition[sparc_plank_1[l].f2][sparc_plank_1[r].f0]) ? sparc_TEMP + 20 : 0 )
#define sparc_ASGNI_state(l,r)	( (sparc_TEMP = sparc_ASGNI_transition[sparc_plank_1[l].f2][sparc_plank_1[r].f0]) ? sparc_TEMP + 22 : 0 )
#define sparc_ASGNP_state(l,r)	( (sparc_TEMP = sparc_ASGNP_transition[sparc_plank_1[l].f2][sparc_plank_1[r].f0]) ? sparc_TEMP + 24 : 0 )
#define sparc_ASGNS_state(l,r)	( (sparc_TEMP = sparc_ASGNS_transition[sparc_plank_1[l].f2][sparc_plank_1[r].f0]) ? sparc_TEMP + 26 : 0 )
#define sparc_BANDU_state(l,r)	( (sparc_TEMP = sparc_BANDU_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f3]) ? sparc_TEMP + 29 : 0 )
#define sparc_BCOMU_state(l)	( (sparc_TEMP = sparc_plank_1[l].f4) ? sparc_TEMP + 31 : 0 )
#define sparc_BORU_state(l,r)	( (sparc_TEMP = sparc_BORU_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f3]) ? sparc_TEMP + 34 : 0 )
#define sparc_BXORU_state(l,r)	( (sparc_TEMP = sparc_BXORU_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f3]) ? sparc_TEMP + 36 : 0 )
#define sparc_CALLB_state(l,r)	( (sparc_TEMP = sparc_CALLB_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 38 : 0 )
#define sparc_CALLD_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 39 : 0 )
#define sparc_CALLF_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 40 : 0 )
#define sparc_CALLI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 41 : 0 )
#define sparc_CALLV_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 42 : 0 )
#define sparc_CNSTC_state	50
#define sparc_CNSTD_state	0
#define sparc_CNSTF_state	0
#define sparc_CNSTI_state	51
#define sparc_CNSTP_state	52
#define sparc_CNSTS_state	53
#define sparc_CNSTU_state	54
#define sparc_CVCI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f5) ? sparc_TEMP + 54 : 0 )
#define sparc_CVCU_state(l)	( (sparc_TEMP = sparc_plank_1[l].f6) ? sparc_TEMP + 56 : 0 )
#define sparc_CVDF_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 58 : 0 )
#define sparc_CVDI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 59 : 0 )
#define sparc_CVFD_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 60 : 0 )
#define sparc_CVIC_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 61 : 0 )
#define sparc_CVID_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 62 : 0 )
#define sparc_CVIS_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 63 : 0 )
#define sparc_CVIU_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 64 : 0 )
#define sparc_CVPU_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 65 : 0 )
#define sparc_CVSI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f7) ? sparc_TEMP + 66 : 0 )
#define sparc_CVSU_state(l)	( (sparc_TEMP = sparc_plank_1[l].f7) ? sparc_TEMP + 68 : 0 )
#define sparc_CVUC_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 70 : 0 )
#define sparc_CVUI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 71 : 0 )
#define sparc_CVUP_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 72 : 0 )
#define sparc_CVUS_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 73 : 0 )
#define sparc_DIVD_state(l,r)	( (sparc_TEMP = sparc_DIVD_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 74 : 0 )
#define sparc_DIVF_state(l,r)	( (sparc_TEMP = sparc_DIVF_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 75 : 0 )
#define sparc_DIVI_state(l,r)	( (sparc_TEMP = sparc_DIVI_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 76 : 0 )
#define sparc_DIVU_state(l,r)	( (sparc_TEMP = sparc_DIVU_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 77 : 0 )
#define sparc_EQD_state(l,r)	( (sparc_TEMP = sparc_EQD_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 79 : 0 )
#define sparc_EQF_state(l,r)	( (sparc_TEMP = sparc_EQF_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 80 : 0 )
#define sparc_EQI_state(l,r)	( (sparc_TEMP = sparc_EQI_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 81 : 0 )
#define sparc_GED_state(l,r)	( (sparc_TEMP = sparc_GED_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 91 : 0 )
#define sparc_GEF_state(l,r)	( (sparc_TEMP = sparc_GEF_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 92 : 0 )
#define sparc_GEI_state(l,r)	( (sparc_TEMP = sparc_GEI_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 93 : 0 )
#define sparc_GEU_state(l,r)	( (sparc_TEMP = sparc_GEU_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 94 : 0 )
#define sparc_GTD_state(l,r)	( (sparc_TEMP = sparc_GTD_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 98 : 0 )
#define sparc_GTF_state(l,r)	( (sparc_TEMP = sparc_GTF_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 99 : 0 )
#define sparc_GTI_state(l,r)	( (sparc_TEMP = sparc_GTI_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 100 : 0 )
#define sparc_GTU_state(l,r)	( (sparc_TEMP = sparc_GTU_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 101 : 0 )
#define sparc_I0I_state	103
#define sparc_I1I_state	104
#define sparc_I2I_state	105
#define sparc_I3I_state	106
#define sparc_INDIRB_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 106 : 0 )
#define sparc_INDIRC_state(l)	( (sparc_TEMP = sparc_plank_1[l].f2) ? sparc_TEMP + 107 : 0 )
#define sparc_INDIRD_state(l)	( (sparc_TEMP = sparc_plank_1[l].f2) ? sparc_TEMP + 109 : 0 )
#define sparc_INDIRF_state(l)	( (sparc_TEMP = sparc_plank_0[l].f8) ? sparc_TEMP + 111 : 0 )
#define sparc_INDIRI_state(l)	( (sparc_TEMP = sparc_plank_0[l].f8) ? sparc_TEMP + 113 : 0 )
#define sparc_INDIRP_state(l)	( (sparc_TEMP = sparc_plank_0[l].f8) ? sparc_TEMP + 115 : 0 )
#define sparc_INDIRS_state(l)	( (sparc_TEMP = sparc_plank_0[l].f8) ? sparc_TEMP + 117 : 0 )
#define sparc_JUMPV_state(l)	( (sparc_TEMP = sparc_plank_0[l].f9) ? sparc_TEMP + 120 : 0 )
#define sparc_LABELV_state	123
#define sparc_LED_state(l,r)	( (sparc_TEMP = sparc_LED_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 123 : 0 )
#define sparc_LEF_state(l,r)	( (sparc_TEMP = sparc_LEF_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 124 : 0 )
#define sparc_LEI_state(l,r)	( (sparc_TEMP = sparc_LEI_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 125 : 0 )
#define sparc_LEU_state(l,r)	( (sparc_TEMP = sparc_LEU_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 126 : 0 )
#define sparc_LOADB_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 128 : 0 )
#define sparc_LOADC_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 129 : 0 )
#define sparc_LOADD_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 130 : 0 )
#define sparc_LOADF_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 131 : 0 )
#define sparc_LOADI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 132 : 0 )
#define sparc_LOADP_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 133 : 0 )
#define sparc_LOADS_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 134 : 0 )
#define sparc_LOADU_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 135 : 0 )
#define sparc_LSHI_state(l,r)	( (sparc_TEMP = sparc_LSHI_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 137 : 0 )
#define sparc_LSHU_state(l,r)	( (sparc_TEMP = sparc_LSHU_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 138 : 0 )
#define sparc_LTD_state(l,r)	( (sparc_TEMP = sparc_LTD_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 139 : 0 )
#define sparc_LTF_state(l,r)	( (sparc_TEMP = sparc_LTF_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 140 : 0 )
#define sparc_LTI_state(l,r)	( (sparc_TEMP = sparc_LTI_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 141 : 0 )
#define sparc_LTU_state(l,r)	( (sparc_TEMP = sparc_LTU_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 142 : 0 )
#define sparc_MODI_state(l,r)	( (sparc_TEMP = sparc_MODI_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 153 : 0 )
#define sparc_MODU_state(l,r)	( (sparc_TEMP = sparc_MODU_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 154 : 0 )
#define sparc_MULD_state(l,r)	( (sparc_TEMP = sparc_MULD_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 158 : 0 )
#define sparc_MULF_state(l,r)	( (sparc_TEMP = sparc_MULF_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 159 : 0 )
#define sparc_MULI_state(l,r)	( (sparc_TEMP = sparc_MULI_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 160 : 0 )
#define sparc_MULU_state(l,r)	( (sparc_TEMP = sparc_MULU_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 180 : 0 )
#define sparc_NED_state(l,r)	( (sparc_TEMP = sparc_NED_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 181 : 0 )
#define sparc_NEF_state(l,r)	( (sparc_TEMP = sparc_NEF_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 182 : 0 )
#define sparc_NEGD_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 183 : 0 )
#define sparc_NEGF_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 184 : 0 )
#define sparc_NEGI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 185 : 0 )
#define sparc_NEI_state(l,r)	( (sparc_TEMP = sparc_NEI_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 186 : 0 )
#define sparc_RETD_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 201 : 0 )
#define sparc_RETF_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 203 : 0 )
#define sparc_RETI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 204 : 0 )
#define sparc_RETV_state	206
#define sparc_RSHI_state(l,r)	( (sparc_TEMP = sparc_RSHI_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 215 : 0 )
#define sparc_RSHU_state(l,r)	( (sparc_TEMP = sparc_RSHU_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 216 : 0 )
#define sparc_SUBD_state(l,r)	( (sparc_TEMP = sparc_SUBD_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 237 : 0 )
#define sparc_SUBF_state(l,r)	( (sparc_TEMP = sparc_SUBF_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 238 : 0 )
#define sparc_SUBI_state(l,r)	( (sparc_TEMP = sparc_SUBI_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 239 : 0 )
#define sparc_SUBP_state(l,r)	( (sparc_TEMP = sparc_SUBP_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 240 : 0 )
#define sparc_SUBU_state(l,r)	( (sparc_TEMP = sparc_SUBU_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 241 : 0 )
#define sparc_VREGP_state	247
#define sparc_NOP_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 188 : 0 )
#define sparc_LGCNSTI_state	128
#define sparc_TESTP_state(l)	( (sparc_TEMP = sparc_plank_0[l].f8) ? sparc_TEMP + 242 : 0 )
#define sparc_LOCALP_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 136 : 0 )
#define sparc_FUTUREF_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 85 : 0 )
#define sparc_FUTURED_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 84 : 0 )
#define sparc_FUTUREC_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 83 : 0 )
#define sparc_FUTURES_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 88 : 0 )
#define sparc_FUTUREI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 86 : 0 )
#define sparc_FUTUREU_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 89 : 0 )
#define sparc_FUTUREP_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 87 : 0 )
#define sparc_FUTUREV_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 90 : 0 )
#define sparc_FUTUREB_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 82 : 0 )
#define sparc_TOUCHI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 244 : 0 )
#define sparc_RTOUCH_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 217 : 0 )
#define sparc_MTOUCH_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 157 : 0 )
#define sparc_MULTIINIT_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 170 : 0 )
#define sparc_STOUCH_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 236 : 0 )
#define sparc_GRS_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 96 : 0 )
#define sparc_GRI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 95 : 0 )
#define sparc_GRU_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 97 : 0 )
#define sparc_MIGRATEV_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 151 : 0 )
#define sparc_RESTORE_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 200 : 0 )
#define sparc_NOTEST_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 189 : 0 )
#define sparc_RETEST_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 202 : 0 )
#define sparc_NONLOCAL_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 187 : 0 )
#define sparc_ISLOCPTR_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 119 : 0 )
#define sparc_ALLOCEXT_state	10
#define sparc_MERGEPH_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 150 : 0 )
#define sparc_UNPHASE_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 245 : 0 )
#define sparc_ABORTONMISS_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 0 : 0 )
#define sparc_ENDABORTONMISS_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 78 : 0 )
#define sparc_MIGRPH_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 152 : 0 )
#define sparc_CASGNF_state(l,r)	( (sparc_TEMP = sparc_CASGNF_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 45 : 0 )
#define sparc_CASGND_state(l,r)	( (sparc_TEMP = sparc_CASGND_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 44 : 0 )
#define sparc_CASGNC_state(l,r)	( (sparc_TEMP = sparc_CASGNC_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 43 : 0 )
#define sparc_CASGNS_state(l,r)	( (sparc_TEMP = sparc_CASGNS_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 48 : 0 )
#define sparc_CASGNI_state(l,r)	( (sparc_TEMP = sparc_CASGNI_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 46 : 0 )
#define sparc_CASGNP_state(l,r)	( (sparc_TEMP = sparc_CASGNP_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 47 : 0 )
#define sparc_RPCF_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 209 : 0 )
#define sparc_RPCD_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 208 : 0 )
#define sparc_RPCC_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 207 : 0 )
#define sparc_RPCS_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 212 : 0 )
#define sparc_RPCI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 210 : 0 )
#define sparc_RPCU_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 213 : 0 )
#define sparc_RPCP_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 211 : 0 )
#define sparc_RPCV_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 214 : 0 )
#define sparc_RPCB_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 206 : 0 )
#define sparc_ATOMICINC_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 28 : 0 )
#define sparc_MTESTP_state(l)	( (sparc_TEMP = sparc_plank_0[l].f8) ? sparc_TEMP + 155 : 0 )
#define sparc_PREFETCHP_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 190 : 0 )
#define sparc_MASGNF_state(l,r)	( (sparc_TEMP = sparc_MASGNF_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 146 : 0 )
#define sparc_MASGND_state(l,r)	( (sparc_TEMP = sparc_MASGND_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 145 : 0 )
#define sparc_MASGNC_state(l,r)	( (sparc_TEMP = sparc_MASGNC_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 144 : 0 )
#define sparc_MASGNS_state(l,r)	( (sparc_TEMP = sparc_MASGNS_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 149 : 0 )
#define sparc_MASGNI_state(l,r)	( (sparc_TEMP = sparc_MASGNI_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 147 : 0 )
#define sparc_MASGNP_state(l,r)	( (sparc_TEMP = sparc_MASGNP_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 148 : 0 )
#define sparc_MASGNB_state(l,r)	( (sparc_TEMP = sparc_MASGNB_transition[sparc_plank_1[l].f0][sparc_plank_1[r].f0]) ? sparc_TEMP + 143 : 0 )
#define sparc_MULTIRPCF_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 174 : 0 )
#define sparc_MULTIRPCD_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 173 : 0 )
#define sparc_MULTIRPCC_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 172 : 0 )
#define sparc_MULTIRPCS_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 177 : 0 )
#define sparc_MULTIRPCI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 175 : 0 )
#define sparc_MULTIRPCU_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 178 : 0 )
#define sparc_MULTIRPCP_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 176 : 0 )
#define sparc_MULTIRPCV_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 179 : 0 )
#define sparc_MULTIRPCB_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 171 : 0 )
#define sparc_MULTIFUTUREF_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 164 : 0 )
#define sparc_MULTIFUTURED_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 163 : 0 )
#define sparc_MULTIFUTUREC_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 162 : 0 )
#define sparc_MULTIFUTURES_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 167 : 0 )
#define sparc_MULTIFUTUREI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 165 : 0 )
#define sparc_MULTIFUTUREU_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 168 : 0 )
#define sparc_MULTIFUTUREP_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 166 : 0 )
#define sparc_MULTIFUTUREV_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 169 : 0 )
#define sparc_MULTIFUTUREB_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 161 : 0 )
#define sparc_RCALLF_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 194 : 0 )
#define sparc_RCALLD_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 193 : 0 )
#define sparc_RCALLC_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 192 : 0 )
#define sparc_RCALLS_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 197 : 0 )
#define sparc_RCALLI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 195 : 0 )
#define sparc_RCALLU_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 198 : 0 )
#define sparc_RCALLP_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 196 : 0 )
#define sparc_RCALLV_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 199 : 0 )
#define sparc_RCALLB_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 191 : 0 )
#define sparc_SFUTUREF_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 221 : 0 )
#define sparc_SFUTURED_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 220 : 0 )
#define sparc_SFUTUREC_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 219 : 0 )
#define sparc_SFUTURES_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 224 : 0 )
#define sparc_SFUTUREI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 222 : 0 )
#define sparc_SFUTUREU_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 225 : 0 )
#define sparc_SFUTUREP_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 223 : 0 )
#define sparc_SFUTUREV_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 226 : 0 )
#define sparc_SFUTUREB_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 218 : 0 )
#define sparc_SRPCF_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 230 : 0 )
#define sparc_SRPCD_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 229 : 0 )
#define sparc_SRPCC_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 228 : 0 )
#define sparc_SRPCS_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 233 : 0 )
#define sparc_SRPCI_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 231 : 0 )
#define sparc_SRPCU_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 234 : 0 )
#define sparc_SRPCP_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 232 : 0 )
#define sparc_SRPCV_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 235 : 0 )
#define sparc_SRPCB_state(l)	( (sparc_TEMP = sparc_plank_1[l].f0) ? sparc_TEMP + 227 : 0 )

#ifdef __STDC__
int sparc_state(int op, int l, int r) {
#else
int sparc_state(op, l, r) int op; int l; int r; {
#endif
	register int sparc_TEMP;
	switch (op) {
	case 306:
	case 305:
	case 309:
	case 311:
	case 310:
	case 57:
	case 51:
	case 50:
	case 49:
	case 53:
	case 55:
	case 52:
	case 390:
	case 422:
	case 438:
	case 217:
	case 450:
	case 449:
	case 453:
	case 454:
	case 482:
	case 481:
	case 485:
	case 498:
	case 497:
	case 501:
	case 502:
	case 514:
	case 513:
	case 517:
	case 518:
	case 530:
	case 529:
	case 533:
	case 534:
	case 341:
	case 342:
	case 546:
	case 545:
	case 549:
	case 550:
	case 357:
	case 358:
	case 466:
	case 465:
	case 469:
	case 470:
	case 562:
	case 561:
	case 565:
	case 373:
	case 374:
	case 322:
	case 321:
	case 325:
	case 327:
	case 326:
	case 1025:
	case 1026:
	case 1027:
	case 1028:
	case 1029:
	case 1031:
	case 1105:
	case 1106:
	case 1107:
	case 1108:
	case 1109:
	case 1111:
	case 1113:
		sparc_assert(r >= 0 && r < 248, sparc_PANIC("Bad state %d passed to sparc_state\n", r));
		/*FALLTHROUGH*/
	case 41:
	case 34:
	case 33:
	case 37:
	case 39:
	case 406:
	case 210:
	case 209:
	case 213:
	case 216:
	case 85:
	case 86:
	case 97:
	case 101:
	case 114:
	case 131:
	case 130:
	case 132:
	case 134:
	case 150:
	case 165:
	case 166:
	case 179:
	case 181:
	case 183:
	case 180:
	case 73:
	case 67:
	case 66:
	case 65:
	case 69:
	case 71:
	case 68:
	case 584:
	case 233:
	case 227:
	case 226:
	case 225:
	case 229:
	case 231:
	case 228:
	case 230:
	case 194:
	case 193:
	case 197:
	case 242:
	case 241:
	case 245:
	case 720:
	case 615:
	case 855:
	case 769:
	case 770:
	case 771:
	case 772:
	case 773:
	case 774:
	case 775:
	case 776:
	case 777:
	case 789:
	case 790:
	case 791:
	case 792:
	case 793:
	case 804:
	case 805:
	case 806:
	case 840:
	case 864:
	case 880:
	case 896:
	case 933:
	case 949:
	case 992:
	case 993:
	case 994:
	case 995:
	case 1008:
	case 1041:
	case 1042:
	case 1043:
	case 1044:
	case 1045:
	case 1046:
	case 1047:
	case 1048:
	case 1049:
	case 1061:
	case 1079:
	case 1095:
	case 1121:
	case 1122:
	case 1123:
	case 1124:
	case 1125:
	case 1126:
	case 1127:
	case 1128:
	case 1129:
	case 1137:
	case 1138:
	case 1139:
	case 1140:
	case 1141:
	case 1142:
	case 1143:
	case 1144:
	case 1145:
	case 1153:
	case 1154:
	case 1155:
	case 1156:
	case 1157:
	case 1158:
	case 1159:
	case 1160:
	case 1161:
	case 1169:
	case 1170:
	case 1171:
	case 1172:
	case 1173:
	case 1174:
	case 1175:
	case 1176:
	case 1177:
	case 1185:
	case 1186:
	case 1187:
	case 1188:
	case 1189:
	case 1190:
	case 1191:
	case 1192:
	case 1193:
		sparc_assert(l >= 0 && l < 248, sparc_PANIC("Bad state %d passed to sparc_state\n", l));
		/*FALLTHROUGH*/
	case 279:
	case 263:
	case 295:
	case 983:
	case 19:
	case 21:
	case 23:
	case 20:
	case 22:
	case 661:
	case 677:
	case 693:
	case 709:
	case 600:
	case 248:
	case 759:
	case 741:
	case 960:
		break;
	}
	switch (op) {
	default: sparc_PANIC("Unknown op %d in sparc_state\n", op); abort(); return 0;
	case 306:
		return sparc_ADDD_state(l,r);
	case 305:
		return sparc_ADDF_state(l,r);
	case 309:
		return sparc_ADDI_state(l,r);
	case 311:
		return sparc_ADDP_state(l,r);
	case 279:
		return sparc_ADDRFP_state;
	case 263:
		return sparc_ADDRGP_state;
	case 295:
		return sparc_ADDRLP_state;
	case 983:
		return sparc_BIGLP_state;
	case 310:
		return sparc_ADDU_state(l,r);
	case 41:
		return sparc_ARGB_state(l);
	case 34:
		return sparc_ARGD_state(l);
	case 33:
		return sparc_ARGF_state(l);
	case 37:
		return sparc_ARGI_state(l);
	case 39:
		return sparc_ARGP_state(l);
	case 57:
		return sparc_ASGNB_state(l,r);
	case 51:
		return sparc_ASGNC_state(l,r);
	case 50:
		return sparc_ASGND_state(l,r);
	case 49:
		return sparc_ASGNF_state(l,r);
	case 53:
		return sparc_ASGNI_state(l,r);
	case 55:
		return sparc_ASGNP_state(l,r);
	case 52:
		return sparc_ASGNS_state(l,r);
	case 390:
		return sparc_BANDU_state(l,r);
	case 406:
		return sparc_BCOMU_state(l);
	case 422:
		return sparc_BORU_state(l,r);
	case 438:
		return sparc_BXORU_state(l,r);
	case 217:
		return sparc_CALLB_state(l,r);
	case 210:
		return sparc_CALLD_state(l);
	case 209:
		return sparc_CALLF_state(l);
	case 213:
		return sparc_CALLI_state(l);
	case 216:
		return sparc_CALLV_state(l);
	case 19:
		return sparc_CNSTC_state;
	case 18:
		return 0;
	case 17:
		return 0;
	case 21:
		return sparc_CNSTI_state;
	case 23:
		return sparc_CNSTP_state;
	case 20:
		return sparc_CNSTS_state;
	case 22:
		return sparc_CNSTU_state;
	case 85:
		return sparc_CVCI_state(l);
	case 86:
		return sparc_CVCU_state(l);
	case 97:
		return sparc_CVDF_state(l);
	case 101:
		return sparc_CVDI_state(l);
	case 114:
		return sparc_CVFD_state(l);
	case 131:
		return sparc_CVIC_state(l);
	case 130:
		return sparc_CVID_state(l);
	case 132:
		return sparc_CVIS_state(l);
	case 134:
		return sparc_CVIU_state(l);
	case 150:
		return sparc_CVPU_state(l);
	case 165:
		return sparc_CVSI_state(l);
	case 166:
		return sparc_CVSU_state(l);
	case 179:
		return sparc_CVUC_state(l);
	case 181:
		return sparc_CVUI_state(l);
	case 183:
		return sparc_CVUP_state(l);
	case 180:
		return sparc_CVUS_state(l);
	case 450:
		return sparc_DIVD_state(l,r);
	case 449:
		return sparc_DIVF_state(l,r);
	case 453:
		return sparc_DIVI_state(l,r);
	case 454:
		return sparc_DIVU_state(l,r);
	case 482:
		return sparc_EQD_state(l,r);
	case 481:
		return sparc_EQF_state(l,r);
	case 485:
		return sparc_EQI_state(l,r);
	case 498:
		return sparc_GED_state(l,r);
	case 497:
		return sparc_GEF_state(l,r);
	case 501:
		return sparc_GEI_state(l,r);
	case 502:
		return sparc_GEU_state(l,r);
	case 514:
		return sparc_GTD_state(l,r);
	case 513:
		return sparc_GTF_state(l,r);
	case 517:
		return sparc_GTI_state(l,r);
	case 518:
		return sparc_GTU_state(l,r);
	case 661:
		return sparc_I0I_state;
	case 677:
		return sparc_I1I_state;
	case 693:
		return sparc_I2I_state;
	case 709:
		return sparc_I3I_state;
	case 73:
		return sparc_INDIRB_state(l);
	case 67:
		return sparc_INDIRC_state(l);
	case 66:
		return sparc_INDIRD_state(l);
	case 65:
		return sparc_INDIRF_state(l);
	case 69:
		return sparc_INDIRI_state(l);
	case 71:
		return sparc_INDIRP_state(l);
	case 68:
		return sparc_INDIRS_state(l);
	case 584:
		return sparc_JUMPV_state(l);
	case 600:
		return sparc_LABELV_state;
	case 530:
		return sparc_LED_state(l,r);
	case 529:
		return sparc_LEF_state(l,r);
	case 533:
		return sparc_LEI_state(l,r);
	case 534:
		return sparc_LEU_state(l,r);
	case 233:
		return sparc_LOADB_state(l);
	case 227:
		return sparc_LOADC_state(l);
	case 226:
		return sparc_LOADD_state(l);
	case 225:
		return sparc_LOADF_state(l);
	case 229:
		return sparc_LOADI_state(l);
	case 231:
		return sparc_LOADP_state(l);
	case 228:
		return sparc_LOADS_state(l);
	case 230:
		return sparc_LOADU_state(l);
	case 341:
		return sparc_LSHI_state(l,r);
	case 342:
		return sparc_LSHU_state(l,r);
	case 546:
		return sparc_LTD_state(l,r);
	case 545:
		return sparc_LTF_state(l,r);
	case 549:
		return sparc_LTI_state(l,r);
	case 550:
		return sparc_LTU_state(l,r);
	case 357:
		return sparc_MODI_state(l,r);
	case 358:
		return sparc_MODU_state(l,r);
	case 466:
		return sparc_MULD_state(l,r);
	case 465:
		return sparc_MULF_state(l,r);
	case 469:
		return sparc_MULI_state(l,r);
	case 470:
		return sparc_MULU_state(l,r);
	case 562:
		return sparc_NED_state(l,r);
	case 561:
		return sparc_NEF_state(l,r);
	case 194:
		return sparc_NEGD_state(l);
	case 193:
		return sparc_NEGF_state(l);
	case 197:
		return sparc_NEGI_state(l);
	case 565:
		return sparc_NEI_state(l,r);
	case 242:
		return sparc_RETD_state(l);
	case 241:
		return sparc_RETF_state(l);
	case 245:
		return sparc_RETI_state(l);
	case 248:
		return sparc_RETV_state;
	case 373:
		return sparc_RSHI_state(l,r);
	case 374:
		return sparc_RSHU_state(l,r);
	case 322:
		return sparc_SUBD_state(l,r);
	case 321:
		return sparc_SUBF_state(l,r);
	case 325:
		return sparc_SUBI_state(l,r);
	case 327:
		return sparc_SUBP_state(l,r);
	case 326:
		return sparc_SUBU_state(l,r);
	case 759:
		return sparc_VREGP_state;
	case 720:
		return sparc_NOP_state(l);
	case 741:
		return sparc_LGCNSTI_state;
	case 615:
		return sparc_TESTP_state(l);
	case 855:
		return sparc_LOCALP_state(l);
	case 769:
		return sparc_FUTUREF_state(l);
	case 770:
		return sparc_FUTURED_state(l);
	case 771:
		return sparc_FUTUREC_state(l);
	case 772:
		return sparc_FUTURES_state(l);
	case 773:
		return sparc_FUTUREI_state(l);
	case 774:
		return sparc_FUTUREU_state(l);
	case 775:
		return sparc_FUTUREP_state(l);
	case 776:
		return sparc_FUTUREV_state(l);
	case 777:
		return sparc_FUTUREB_state(l);
	case 789:
		return sparc_TOUCHI_state(l);
	case 790:
		return sparc_RTOUCH_state(l);
	case 791:
		return sparc_MTOUCH_state(l);
	case 792:
		return sparc_MULTIINIT_state(l);
	case 793:
		return sparc_STOUCH_state(l);
	case 804:
		return sparc_GRS_state(l);
	case 805:
		return sparc_GRI_state(l);
	case 806:
		return sparc_GRU_state(l);
	case 840:
		return sparc_MIGRATEV_state(l);
	case 864:
		return sparc_RESTORE_state(l);
	case 880:
		return sparc_NOTEST_state(l);
	case 896:
		return sparc_RETEST_state(l);
	case 933:
		return sparc_NONLOCAL_state(l);
	case 949:
		return sparc_ISLOCPTR_state(l);
	case 960:
		return sparc_ALLOCEXT_state;
	case 992:
		return sparc_MERGEPH_state(l);
	case 993:
		return sparc_UNPHASE_state(l);
	case 994:
		return sparc_ABORTONMISS_state(l);
	case 995:
		return sparc_ENDABORTONMISS_state(l);
	case 1008:
		return sparc_MIGRPH_state(l);
	case 1025:
		return sparc_CASGNF_state(l,r);
	case 1026:
		return sparc_CASGND_state(l,r);
	case 1027:
		return sparc_CASGNC_state(l,r);
	case 1028:
		return sparc_CASGNS_state(l,r);
	case 1029:
		return sparc_CASGNI_state(l,r);
	case 1031:
		return sparc_CASGNP_state(l,r);
	case 1041:
		return sparc_RPCF_state(l);
	case 1042:
		return sparc_RPCD_state(l);
	case 1043:
		return sparc_RPCC_state(l);
	case 1044:
		return sparc_RPCS_state(l);
	case 1045:
		return sparc_RPCI_state(l);
	case 1046:
		return sparc_RPCU_state(l);
	case 1047:
		return sparc_RPCP_state(l);
	case 1048:
		return sparc_RPCV_state(l);
	case 1049:
		return sparc_RPCB_state(l);
	case 1061:
		return sparc_ATOMICINC_state(l);
	case 1079:
		return sparc_MTESTP_state(l);
	case 1095:
		return sparc_PREFETCHP_state(l);
	case 1105:
		return sparc_MASGNF_state(l,r);
	case 1106:
		return sparc_MASGND_state(l,r);
	case 1107:
		return sparc_MASGNC_state(l,r);
	case 1108:
		return sparc_MASGNS_state(l,r);
	case 1109:
		return sparc_MASGNI_state(l,r);
	case 1111:
		return sparc_MASGNP_state(l,r);
	case 1113:
		return sparc_MASGNB_state(l,r);
	case 1121:
		return sparc_MULTIRPCF_state(l);
	case 1122:
		return sparc_MULTIRPCD_state(l);
	case 1123:
		return sparc_MULTIRPCC_state(l);
	case 1124:
		return sparc_MULTIRPCS_state(l);
	case 1125:
		return sparc_MULTIRPCI_state(l);
	case 1126:
		return sparc_MULTIRPCU_state(l);
	case 1127:
		return sparc_MULTIRPCP_state(l);
	case 1128:
		return sparc_MULTIRPCV_state(l);
	case 1129:
		return sparc_MULTIRPCB_state(l);
	case 1137:
		return sparc_MULTIFUTUREF_state(l);
	case 1138:
		return sparc_MULTIFUTURED_state(l);
	case 1139:
		return sparc_MULTIFUTUREC_state(l);
	case 1140:
		return sparc_MULTIFUTURES_state(l);
	case 1141:
		return sparc_MULTIFUTUREI_state(l);
	case 1142:
		return sparc_MULTIFUTUREU_state(l);
	case 1143:
		return sparc_MULTIFUTUREP_state(l);
	case 1144:
		return sparc_MULTIFUTUREV_state(l);
	case 1145:
		return sparc_MULTIFUTUREB_state(l);
	case 1153:
		return sparc_RCALLF_state(l);
	case 1154:
		return sparc_RCALLD_state(l);
	case 1155:
		return sparc_RCALLC_state(l);
	case 1156:
		return sparc_RCALLS_state(l);
	case 1157:
		return sparc_RCALLI_state(l);
	case 1158:
		return sparc_RCALLU_state(l);
	case 1159:
		return sparc_RCALLP_state(l);
	case 1160:
		return sparc_RCALLV_state(l);
	case 1161:
		return sparc_RCALLB_state(l);
	case 1169:
		return sparc_SFUTUREF_state(l);
	case 1170:
		return sparc_SFUTURED_state(l);
	case 1171:
		return sparc_SFUTUREC_state(l);
	case 1172:
		return sparc_SFUTURES_state(l);
	case 1173:
		return sparc_SFUTUREI_state(l);
	case 1174:
		return sparc_SFUTUREU_state(l);
	case 1175:
		return sparc_SFUTUREP_state(l);
	case 1176:
		return sparc_SFUTUREV_state(l);
	case 1177:
		return sparc_SFUTUREB_state(l);
	case 1185:
		return sparc_SRPCF_state(l);
	case 1186:
		return sparc_SRPCD_state(l);
	case 1187:
		return sparc_SRPCC_state(l);
	case 1188:
		return sparc_SRPCS_state(l);
	case 1189:
		return sparc_SRPCI_state(l);
	case 1190:
		return sparc_SRPCU_state(l);
	case 1191:
		return sparc_SRPCP_state(l);
	case 1192:
		return sparc_SRPCV_state(l);
	case 1193:
		return sparc_SRPCB_state(l);
	}
}
#ifdef sparc_STATE_LABEL
#define sparc_INCLUDE_EXTRA
#else
#ifdef STATE_LABEL
#define sparc_INCLUDE_EXTRA
#define sparc_STATE_LABEL 	STATE_LABEL
#define sparc_NODEPTR_TYPE	NODEPTR_TYPE
#define sparc_LEFT_CHILD  	LEFT_CHILD
#define sparc_OP_LABEL    	OP_LABEL
#define sparc_RIGHT_CHILD 	RIGHT_CHILD
#endif /* STATE_LABEL */
#endif /* sparc_STATE_LABEL */

#ifdef sparc_INCLUDE_EXTRA

#ifdef __STDC__
int sparc_label(sparc_NODEPTR_TYPE n) {
#else
int sparc_label(n) sparc_NODEPTR_TYPE n; {
#endif
	sparc_assert(n, sparc_PANIC("NULL pointer passed to sparc_label\n"));
	switch (sparc_OP_LABEL(n)) {
	default: sparc_PANIC("Bad op %d in sparc_label\n", sparc_OP_LABEL(n)); abort(); return 0;
	case 279:
	case 263:
	case 295:
	case 983:
	case 19:
	case 21:
	case 23:
	case 20:
	case 22:
	case 661:
	case 677:
	case 693:
	case 709:
	case 600:
	case 248:
	case 759:
	case 741:
	case 960:
		return sparc_STATE_LABEL(n) = sparc_state(sparc_OP_LABEL(n), 0, 0);
	case 41:
	case 34:
	case 33:
	case 37:
	case 39:
	case 406:
	case 210:
	case 209:
	case 213:
	case 216:
	case 85:
	case 86:
	case 97:
	case 101:
	case 114:
	case 131:
	case 130:
	case 132:
	case 134:
	case 150:
	case 165:
	case 166:
	case 179:
	case 181:
	case 183:
	case 180:
	case 73:
	case 67:
	case 66:
	case 65:
	case 69:
	case 71:
	case 68:
	case 584:
	case 233:
	case 227:
	case 226:
	case 225:
	case 229:
	case 231:
	case 228:
	case 230:
	case 194:
	case 193:
	case 197:
	case 242:
	case 241:
	case 245:
	case 720:
	case 615:
	case 855:
	case 769:
	case 770:
	case 771:
	case 772:
	case 773:
	case 774:
	case 775:
	case 776:
	case 777:
	case 789:
	case 790:
	case 791:
	case 792:
	case 793:
	case 804:
	case 805:
	case 806:
	case 840:
	case 864:
	case 880:
	case 896:
	case 933:
	case 949:
	case 992:
	case 993:
	case 994:
	case 995:
	case 1008:
	case 1041:
	case 1042:
	case 1043:
	case 1044:
	case 1045:
	case 1046:
	case 1047:
	case 1048:
	case 1049:
	case 1061:
	case 1079:
	case 1095:
	case 1121:
	case 1122:
	case 1123:
	case 1124:
	case 1125:
	case 1126:
	case 1127:
	case 1128:
	case 1129:
	case 1137:
	case 1138:
	case 1139:
	case 1140:
	case 1141:
	case 1142:
	case 1143:
	case 1144:
	case 1145:
	case 1153:
	case 1154:
	case 1155:
	case 1156:
	case 1157:
	case 1158:
	case 1159:
	case 1160:
	case 1161:
	case 1169:
	case 1170:
	case 1171:
	case 1172:
	case 1173:
	case 1174:
	case 1175:
	case 1176:
	case 1177:
	case 1185:
	case 1186:
	case 1187:
	case 1188:
	case 1189:
	case 1190:
	case 1191:
	case 1192:
	case 1193:
		return sparc_STATE_LABEL(n) = sparc_state(sparc_OP_LABEL(n), sparc_label(sparc_LEFT_CHILD(n)), 0);
	case 306:
	case 305:
	case 309:
	case 311:
	case 310:
	case 57:
	case 51:
	case 50:
	case 49:
	case 53:
	case 55:
	case 52:
	case 390:
	case 422:
	case 438:
	case 217:
	case 450:
	case 449:
	case 453:
	case 454:
	case 482:
	case 481:
	case 485:
	case 498:
	case 497:
	case 501:
	case 502:
	case 514:
	case 513:
	case 517:
	case 518:
	case 530:
	case 529:
	case 533:
	case 534:
	case 341:
	case 342:
	case 546:
	case 545:
	case 549:
	case 550:
	case 357:
	case 358:
	case 466:
	case 465:
	case 469:
	case 470:
	case 562:
	case 561:
	case 565:
	case 373:
	case 374:
	case 322:
	case 321:
	case 325:
	case 327:
	case 326:
	case 1025:
	case 1026:
	case 1027:
	case 1028:
	case 1029:
	case 1031:
	case 1105:
	case 1106:
	case 1107:
	case 1108:
	case 1109:
	case 1111:
	case 1113:
		return sparc_STATE_LABEL(n) = sparc_state(sparc_OP_LABEL(n), sparc_label(sparc_LEFT_CHILD(n)), sparc_label(sparc_RIGHT_CHILD(n)));
	}
}
#ifdef __STDC__
sparc_NODEPTR_TYPE * sparc_kids(sparc_NODEPTR_TYPE p, int rulenumber, sparc_NODEPTR_TYPE *kids) {
#else
sparc_NODEPTR_TYPE * sparc_kids(p, rulenumber, kids) sparc_NODEPTR_TYPE p; int rulenumber; sparc_NODEPTR_TYPE *kids; {
#endif
	sparc_assert(p, sparc_PANIC("NULL node pointer passed to sparc_kids\n"));
	sparc_assert(kids, sparc_PANIC("NULL kids pointer passed to sparc_kids\n"));
	switch (rulenumber) {
	default:
		sparc_PANIC("Unknown Rule %d in sparc_kids;\n", rulenumber);
		abort();
		/* NOTREACHED */
	case 18:
	case 20:
	case 26:
	case 28:
	case 158:
		kids[0] = sparc_LEFT_CHILD(sparc_LEFT_CHILD(p));
		break;
	case 2:
	case 6:
	case 7:
	case 8:
	case 9:
	case 10:
	case 35:
	case 45:
		kids[0] = p;
		break;
	case 13:
	case 66:
	case 67:
		kids[0] = sparc_LEFT_CHILD(p);
		kids[1] = sparc_LEFT_CHILD(sparc_RIGHT_CHILD(p));
		break;
	case 122:
	case 123:
	case 124:
	case 125:
	case 126:
	case 127:
		kids[0] = sparc_RIGHT_CHILD(p);
		break;
	case 1:
	case 3:
	case 4:
	case 11:
	case 141:
	case 177:
	case 157:
	case 43:
	case 44:
	case 49:
	case 50:
	case 51:
	case 52:
	case 53:
	case 54:
	case 55:
	case 56:
	case 57:
	case 91:
	case 98:
	case 99:
	case 100:
	case 101:
	case 102:
	case 103:
	case 154:
	case 155:
	case 159:
	case 198:
		break;
	case 14:
	case 38:
	case 39:
	case 46:
	case 47:
	case 48:
	case 58:
	case 59:
	case 60:
	case 61:
	case 62:
	case 63:
	case 64:
	case 65:
	case 68:
	case 69:
	case 85:
	case 86:
	case 87:
	case 88:
	case 89:
	case 90:
	case 104:
	case 105:
	case 106:
	case 107:
	case 108:
	case 109:
	case 110:
	case 111:
	case 112:
	case 113:
	case 142:
	case 143:
	case 144:
	case 145:
	case 146:
	case 147:
	case 148:
	case 149:
	case 150:
	case 151:
	case 152:
	case 153:
	case 116:
	case 117:
	case 118:
	case 119:
	case 120:
	case 121:
	case 131:
	case 132:
	case 133:
	case 134:
	case 135:
	case 136:
	case 137:
	case 138:
	case 139:
	case 140:
	case 181:
	case 182:
	case 183:
	case 184:
	case 185:
	case 186:
	case 202:
	case 203:
	case 204:
	case 205:
	case 206:
	case 207:
	case 208:
		kids[0] = sparc_LEFT_CHILD(p);
		kids[1] = sparc_RIGHT_CHILD(p);
		break;
	case 5:
	case 12:
	case 15:
	case 16:
	case 17:
	case 19:
	case 21:
	case 22:
	case 23:
	case 24:
	case 25:
	case 27:
	case 29:
	case 30:
	case 31:
	case 32:
	case 33:
	case 34:
	case 36:
	case 37:
	case 40:
	case 41:
	case 42:
	case 70:
	case 71:
	case 72:
	case 73:
	case 74:
	case 75:
	case 76:
	case 77:
	case 78:
	case 79:
	case 80:
	case 81:
	case 82:
	case 83:
	case 84:
	case 92:
	case 93:
	case 94:
	case 95:
	case 96:
	case 97:
	case 114:
	case 115:
	case 128:
	case 129:
	case 130:
	case 156:
	case 160:
	case 161:
	case 162:
	case 163:
	case 164:
	case 165:
	case 166:
	case 167:
	case 168:
	case 169:
	case 170:
	case 171:
	case 172:
	case 173:
	case 174:
	case 175:
	case 176:
	case 178:
	case 179:
	case 180:
	case 187:
	case 188:
	case 189:
	case 190:
	case 191:
	case 192:
	case 193:
	case 194:
	case 195:
	case 196:
	case 197:
	case 199:
	case 200:
	case 201:
	case 209:
	case 210:
	case 211:
	case 212:
	case 213:
	case 214:
	case 215:
	case 216:
	case 217:
	case 218:
	case 219:
	case 220:
	case 221:
	case 222:
	case 223:
	case 224:
	case 225:
	case 226:
	case 227:
	case 228:
	case 229:
	case 230:
	case 231:
	case 232:
	case 233:
	case 234:
	case 235:
	case 236:
	case 237:
	case 238:
	case 239:
	case 240:
	case 241:
	case 242:
	case 243:
	case 244:
	case 245:
	case 246:
	case 247:
	case 248:
	case 249:
	case 250:
	case 251:
	case 252:
	case 253:
	case 254:
	case 255:
	case 256:
	case 257:
	case 258:
	case 259:
	case 260:
		kids[0] = sparc_LEFT_CHILD(p);
		break;
	}
	return kids;
}
#ifdef __STDC__
sparc_NODEPTR_TYPE sparc_child(sparc_NODEPTR_TYPE p, int index) {
#else
sparc_NODEPTR_TYPE sparc_child(p, index) sparc_NODEPTR_TYPE p; int index; {
#endif
	sparc_assert(p, sparc_PANIC("NULL pointer passed to sparc_child\n"));
	switch (index) {
	case 0:
		return sparc_LEFT_CHILD(p);
	case 1:
		return sparc_RIGHT_CHILD(p);
	}
	sparc_PANIC("Bad index %d in sparc_child;\n", index);
	abort();
	return 0;
}
#ifdef __STDC__
int sparc_op_label(sparc_NODEPTR_TYPE p) {
#else
int sparc_op_label(p) sparc_NODEPTR_TYPE p; {
#endif
	sparc_assert(p, sparc_PANIC("NULL pointer passed to sparc_op_label\n"));
	return sparc_OP_LABEL(p);
}
#ifdef __STDC__
int sparc_state_label(sparc_NODEPTR_TYPE p) {
#else
int sparc_state_label(p) sparc_NODEPTR_TYPE p; {
#endif
	sparc_assert(p, sparc_PANIC("NULL pointer passed to sparc_state_label\n"));
	return sparc_STATE_LABEL(p);
}
#endif /* sparc_INCLUDE_EXTRA */
#define sparc_con_NT 7
#define sparc_reg_NT 6
#define sparc_rc_NT 5
#define sparc_ar_NT 4
#define sparc_addr_NT 3
#define sparc_acon_NT 2
#define sparc_stmt_NT 1
#define sparc_NT 7
char * sparc_opname[] = {
	0, /* 0 */
	0, /* 1 */
	0, /* 2 */
	0, /* 3 */
	0, /* 4 */
	0, /* 5 */
	0, /* 6 */
	0, /* 7 */
	0, /* 8 */
	0, /* 9 */
	0, /* 10 */
	0, /* 11 */
	0, /* 12 */
	0, /* 13 */
	0, /* 14 */
	0, /* 15 */
	0, /* 16 */
	"CNSTF", /* 17 */
	"CNSTD", /* 18 */
	"CNSTC", /* 19 */
	"CNSTS", /* 20 */
	"CNSTI", /* 21 */
	"CNSTU", /* 22 */
	"CNSTP", /* 23 */
	0, /* 24 */
	0, /* 25 */
	0, /* 26 */
	0, /* 27 */
	0, /* 28 */
	0, /* 29 */
	0, /* 30 */
	0, /* 31 */
	0, /* 32 */
	"ARGF", /* 33 */
	"ARGD", /* 34 */
	0, /* 35 */
	0, /* 36 */
	"ARGI", /* 37 */
	0, /* 38 */
	"ARGP", /* 39 */
	0, /* 40 */
	"ARGB", /* 41 */
	0, /* 42 */
	0, /* 43 */
	0, /* 44 */
	0, /* 45 */
	0, /* 46 */
	0, /* 47 */
	0, /* 48 */
	"ASGNF", /* 49 */
	"ASGND", /* 50 */
	"ASGNC", /* 51 */
	"ASGNS", /* 52 */
	"ASGNI", /* 53 */
	0, /* 54 */
	"ASGNP", /* 55 */
	0, /* 56 */
	"ASGNB", /* 57 */
	0, /* 58 */
	0, /* 59 */
	0, /* 60 */
	0, /* 61 */
	0, /* 62 */
	0, /* 63 */
	0, /* 64 */
	"INDIRF", /* 65 */
	"INDIRD", /* 66 */
	"INDIRC", /* 67 */
	"INDIRS", /* 68 */
	"INDIRI", /* 69 */
	0, /* 70 */
	"INDIRP", /* 71 */
	0, /* 72 */
	"INDIRB", /* 73 */
	0, /* 74 */
	0, /* 75 */
	0, /* 76 */
	0, /* 77 */
	0, /* 78 */
	0, /* 79 */
	0, /* 80 */
	0, /* 81 */
	0, /* 82 */
	0, /* 83 */
	0, /* 84 */
	"CVCI", /* 85 */
	"CVCU", /* 86 */
	0, /* 87 */
	0, /* 88 */
	0, /* 89 */
	0, /* 90 */
	0, /* 91 */
	0, /* 92 */
	0, /* 93 */
	0, /* 94 */
	0, /* 95 */
	0, /* 96 */
	"CVDF", /* 97 */
	0, /* 98 */
	0, /* 99 */
	0, /* 100 */
	"CVDI", /* 101 */
	0, /* 102 */
	0, /* 103 */
	0, /* 104 */
	0, /* 105 */
	0, /* 106 */
	0, /* 107 */
	0, /* 108 */
	0, /* 109 */
	0, /* 110 */
	0, /* 111 */
	0, /* 112 */
	0, /* 113 */
	"CVFD", /* 114 */
	0, /* 115 */
	0, /* 116 */
	0, /* 117 */
	0, /* 118 */
	0, /* 119 */
	0, /* 120 */
	0, /* 121 */
	0, /* 122 */
	0, /* 123 */
	0, /* 124 */
	0, /* 125 */
	0, /* 126 */
	0, /* 127 */
	0, /* 128 */
	0, /* 129 */
	"CVID", /* 130 */
	"CVIC", /* 131 */
	"CVIS", /* 132 */
	0, /* 133 */
	"CVIU", /* 134 */
	0, /* 135 */
	0, /* 136 */
	0, /* 137 */
	0, /* 138 */
	0, /* 139 */
	0, /* 140 */
	0, /* 141 */
	0, /* 142 */
	0, /* 143 */
	0, /* 144 */
	0, /* 145 */
	0, /* 146 */
	0, /* 147 */
	0, /* 148 */
	0, /* 149 */
	"CVPU", /* 150 */
	0, /* 151 */
	0, /* 152 */
	0, /* 153 */
	0, /* 154 */
	0, /* 155 */
	0, /* 156 */
	0, /* 157 */
	0, /* 158 */
	0, /* 159 */
	0, /* 160 */
	0, /* 161 */
	0, /* 162 */
	0, /* 163 */
	0, /* 164 */
	"CVSI", /* 165 */
	"CVSU", /* 166 */
	0, /* 167 */
	0, /* 168 */
	0, /* 169 */
	0, /* 170 */
	0, /* 171 */
	0, /* 172 */
	0, /* 173 */
	0, /* 174 */
	0, /* 175 */
	0, /* 176 */
	0, /* 177 */
	0, /* 178 */
	"CVUC", /* 179 */
	"CVUS", /* 180 */
	"CVUI", /* 181 */
	0, /* 182 */
	"CVUP", /* 183 */
	0, /* 184 */
	0, /* 185 */
	0, /* 186 */
	0, /* 187 */
	0, /* 188 */
	0, /* 189 */
	0, /* 190 */
	0, /* 191 */
	0, /* 192 */
	"NEGF", /* 193 */
	"NEGD", /* 194 */
	0, /* 195 */
	0, /* 196 */
	"NEGI", /* 197 */
	0, /* 198 */
	0, /* 199 */
	0, /* 200 */
	0, /* 201 */
	0, /* 202 */
	0, /* 203 */
	0, /* 204 */
	0, /* 205 */
	0, /* 206 */
	0, /* 207 */
	0, /* 208 */
	"CALLF", /* 209 */
	"CALLD", /* 210 */
	0, /* 211 */
	0, /* 212 */
	"CALLI", /* 213 */
	0, /* 214 */
	0, /* 215 */
	"CALLV", /* 216 */
	"CALLB", /* 217 */
	0, /* 218 */
	0, /* 219 */
	0, /* 220 */
	0, /* 221 */
	0, /* 222 */
	0, /* 223 */
	0, /* 224 */
	"LOADF", /* 225 */
	"LOADD", /* 226 */
	"LOADC", /* 227 */
	"LOADS", /* 228 */
	"LOADI", /* 229 */
	"LOADU", /* 230 */
	"LOADP", /* 231 */
	0, /* 232 */
	"LOADB", /* 233 */
	0, /* 234 */
	0, /* 235 */
	0, /* 236 */
	0, /* 237 */
	0, /* 238 */
	0, /* 239 */
	0, /* 240 */
	"RETF", /* 241 */
	"RETD", /* 242 */
	0, /* 243 */
	0, /* 244 */
	"RETI", /* 245 */
	0, /* 246 */
	0, /* 247 */
	"RETV", /* 248 */
	0, /* 249 */
	0, /* 250 */
	0, /* 251 */
	0, /* 252 */
	0, /* 253 */
	0, /* 254 */
	0, /* 255 */
	0, /* 256 */
	0, /* 257 */
	0, /* 258 */
	0, /* 259 */
	0, /* 260 */
	0, /* 261 */
	0, /* 262 */
	"ADDRGP", /* 263 */
	0, /* 264 */
	0, /* 265 */
	0, /* 266 */
	0, /* 267 */
	0, /* 268 */
	0, /* 269 */
	0, /* 270 */
	0, /* 271 */
	0, /* 272 */
	0, /* 273 */
	0, /* 274 */
	0, /* 275 */
	0, /* 276 */
	0, /* 277 */
	0, /* 278 */
	"ADDRFP", /* 279 */
	0, /* 280 */
	0, /* 281 */
	0, /* 282 */
	0, /* 283 */
	0, /* 284 */
	0, /* 285 */
	0, /* 286 */
	0, /* 287 */
	0, /* 288 */
	0, /* 289 */
	0, /* 290 */
	0, /* 291 */
	0, /* 292 */
	0, /* 293 */
	0, /* 294 */
	"ADDRLP", /* 295 */
	0, /* 296 */
	0, /* 297 */
	0, /* 298 */
	0, /* 299 */
	0, /* 300 */
	0, /* 301 */
	0, /* 302 */
	0, /* 303 */
	0, /* 304 */
	"ADDF", /* 305 */
	"ADDD", /* 306 */
	0, /* 307 */
	0, /* 308 */
	"ADDI", /* 309 */
	"ADDU", /* 310 */
	"ADDP", /* 311 */
	0, /* 312 */
	0, /* 313 */
	0, /* 314 */
	0, /* 315 */
	0, /* 316 */
	0, /* 317 */
	0, /* 318 */
	0, /* 319 */
	0, /* 320 */
	"SUBF", /* 321 */
	"SUBD", /* 322 */
	0, /* 323 */
	0, /* 324 */
	"SUBI", /* 325 */
	"SUBU", /* 326 */
	"SUBP", /* 327 */
	0, /* 328 */
	0, /* 329 */
	0, /* 330 */
	0, /* 331 */
	0, /* 332 */
	0, /* 333 */
	0, /* 334 */
	0, /* 335 */
	0, /* 336 */
	0, /* 337 */
	0, /* 338 */
	0, /* 339 */
	0, /* 340 */
	"LSHI", /* 341 */
	"LSHU", /* 342 */
	0, /* 343 */
	0, /* 344 */
	0, /* 345 */
	0, /* 346 */
	0, /* 347 */
	0, /* 348 */
	0, /* 349 */
	0, /* 350 */
	0, /* 351 */
	0, /* 352 */
	0, /* 353 */
	0, /* 354 */
	0, /* 355 */
	0, /* 356 */
	"MODI", /* 357 */
	"MODU", /* 358 */
	0, /* 359 */
	0, /* 360 */
	0, /* 361 */
	0, /* 362 */
	0, /* 363 */
	0, /* 364 */
	0, /* 365 */
	0, /* 366 */
	0, /* 367 */
	0, /* 368 */
	0, /* 369 */
	0, /* 370 */
	0, /* 371 */
	0, /* 372 */
	"RSHI", /* 373 */
	"RSHU", /* 374 */
	0, /* 375 */
	0, /* 376 */
	0, /* 377 */
	0, /* 378 */
	0, /* 379 */
	0, /* 380 */
	0, /* 381 */
	0, /* 382 */
	0, /* 383 */
	0, /* 384 */
	0, /* 385 */
	0, /* 386 */
	0, /* 387 */
	0, /* 388 */
	0, /* 389 */
	"BANDU", /* 390 */
	0, /* 391 */
	0, /* 392 */
	0, /* 393 */
	0, /* 394 */
	0, /* 395 */
	0, /* 396 */
	0, /* 397 */
	0, /* 398 */
	0, /* 399 */
	0, /* 400 */
	0, /* 401 */
	0, /* 402 */
	0, /* 403 */
	0, /* 404 */
	0, /* 405 */
	"BCOMU", /* 406 */
	0, /* 407 */
	0, /* 408 */
	0, /* 409 */
	0, /* 410 */
	0, /* 411 */
	0, /* 412 */
	0, /* 413 */
	0, /* 414 */
	0, /* 415 */
	0, /* 416 */
	0, /* 417 */
	0, /* 418 */
	0, /* 419 */
	0, /* 420 */
	0, /* 421 */
	"BORU", /* 422 */
	0, /* 423 */
	0, /* 424 */
	0, /* 425 */
	0, /* 426 */
	0, /* 427 */
	0, /* 428 */
	0, /* 429 */
	0, /* 430 */
	0, /* 431 */
	0, /* 432 */
	0, /* 433 */
	0, /* 434 */
	0, /* 435 */
	0, /* 436 */
	0, /* 437 */
	"BXORU", /* 438 */
	0, /* 439 */
	0, /* 440 */
	0, /* 441 */
	0, /* 442 */
	0, /* 443 */
	0, /* 444 */
	0, /* 445 */
	0, /* 446 */
	0, /* 447 */
	0, /* 448 */
	"DIVF", /* 449 */
	"DIVD", /* 450 */
	0, /* 451 */
	0, /* 452 */
	"DIVI", /* 453 */
	"DIVU", /* 454 */
	0, /* 455 */
	0, /* 456 */
	0, /* 457 */
	0, /* 458 */
	0, /* 459 */
	0, /* 460 */
	0, /* 461 */
	0, /* 462 */
	0, /* 463 */
	0, /* 464 */
	"MULF", /* 465 */
	"MULD", /* 466 */
	0, /* 467 */
	0, /* 468 */
	"MULI", /* 469 */
	"MULU", /* 470 */
	0, /* 471 */
	0, /* 472 */
	0, /* 473 */
	0, /* 474 */
	0, /* 475 */
	0, /* 476 */
	0, /* 477 */
	0, /* 478 */
	0, /* 479 */
	0, /* 480 */
	"EQF", /* 481 */
	"EQD", /* 482 */
	0, /* 483 */
	0, /* 484 */
	"EQI", /* 485 */
	0, /* 486 */
	0, /* 487 */
	0, /* 488 */
	0, /* 489 */
	0, /* 490 */
	0, /* 491 */
	0, /* 492 */
	0, /* 493 */
	0, /* 494 */
	0, /* 495 */
	0, /* 496 */
	"GEF", /* 497 */
	"GED", /* 498 */
	0, /* 499 */
	0, /* 500 */
	"GEI", /* 501 */
	"GEU", /* 502 */
	0, /* 503 */
	0, /* 504 */
	0, /* 505 */
	0, /* 506 */
	0, /* 507 */
	0, /* 508 */
	0, /* 509 */
	0, /* 510 */
	0, /* 511 */
	0, /* 512 */
	"GTF", /* 513 */
	"GTD", /* 514 */
	0, /* 515 */
	0, /* 516 */
	"GTI", /* 517 */
	"GTU", /* 518 */
	0, /* 519 */
	0, /* 520 */
	0, /* 521 */
	0, /* 522 */
	0, /* 523 */
	0, /* 524 */
	0, /* 525 */
	0, /* 526 */
	0, /* 527 */
	0, /* 528 */
	"LEF", /* 529 */
	"LED", /* 530 */
	0, /* 531 */
	0, /* 532 */
	"LEI", /* 533 */
	"LEU", /* 534 */
	0, /* 535 */
	0, /* 536 */
	0, /* 537 */
	0, /* 538 */
	0, /* 539 */
	0, /* 540 */
	0, /* 541 */
	0, /* 542 */
	0, /* 543 */
	0, /* 544 */
	"LTF", /* 545 */
	"LTD", /* 546 */
	0, /* 547 */
	0, /* 548 */
	"LTI", /* 549 */
	"LTU", /* 550 */
	0, /* 551 */
	0, /* 552 */
	0, /* 553 */
	0, /* 554 */
	0, /* 555 */
	0, /* 556 */
	0, /* 557 */
	0, /* 558 */
	0, /* 559 */
	0, /* 560 */
	"NEF", /* 561 */
	"NED", /* 562 */
	0, /* 563 */
	0, /* 564 */
	"NEI", /* 565 */
	0, /* 566 */
	0, /* 567 */
	0, /* 568 */
	0, /* 569 */
	0, /* 570 */
	0, /* 571 */
	0, /* 572 */
	0, /* 573 */
	0, /* 574 */
	0, /* 575 */
	0, /* 576 */
	0, /* 577 */
	0, /* 578 */
	0, /* 579 */
	0, /* 580 */
	0, /* 581 */
	0, /* 582 */
	0, /* 583 */
	"JUMPV", /* 584 */
	0, /* 585 */
	0, /* 586 */
	0, /* 587 */
	0, /* 588 */
	0, /* 589 */
	0, /* 590 */
	0, /* 591 */
	0, /* 592 */
	0, /* 593 */
	0, /* 594 */
	0, /* 595 */
	0, /* 596 */
	0, /* 597 */
	0, /* 598 */
	0, /* 599 */
	"LABELV", /* 600 */
	0, /* 601 */
	0, /* 602 */
	0, /* 603 */
	0, /* 604 */
	0, /* 605 */
	0, /* 606 */
	0, /* 607 */
	0, /* 608 */
	0, /* 609 */
	0, /* 610 */
	0, /* 611 */
	0, /* 612 */
	0, /* 613 */
	0, /* 614 */
	"TESTP", /* 615 */
	0, /* 616 */
	0, /* 617 */
	0, /* 618 */
	0, /* 619 */
	0, /* 620 */
	0, /* 621 */
	0, /* 622 */
	0, /* 623 */
	0, /* 624 */
	0, /* 625 */
	0, /* 626 */
	0, /* 627 */
	0, /* 628 */
	0, /* 629 */
	0, /* 630 */
	0, /* 631 */
	0, /* 632 */
	0, /* 633 */
	0, /* 634 */
	0, /* 635 */
	0, /* 636 */
	0, /* 637 */
	0, /* 638 */
	0, /* 639 */
	0, /* 640 */
	0, /* 641 */
	0, /* 642 */
	0, /* 643 */
	0, /* 644 */
	0, /* 645 */
	0, /* 646 */
	0, /* 647 */
	0, /* 648 */
	0, /* 649 */
	0, /* 650 */
	0, /* 651 */
	0, /* 652 */
	0, /* 653 */
	0, /* 654 */
	0, /* 655 */
	0, /* 656 */
	0, /* 657 */
	0, /* 658 */
	0, /* 659 */
	0, /* 660 */
	"I0I", /* 661 */
	0, /* 662 */
	0, /* 663 */
	0, /* 664 */
	0, /* 665 */
	0, /* 666 */
	0, /* 667 */
	0, /* 668 */
	0, /* 669 */
	0, /* 670 */
	0, /* 671 */
	0, /* 672 */
	0, /* 673 */
	0, /* 674 */
	0, /* 675 */
	0, /* 676 */
	"I1I", /* 677 */
	0, /* 678 */
	0, /* 679 */
	0, /* 680 */
	0, /* 681 */
	0, /* 682 */
	0, /* 683 */
	0, /* 684 */
	0, /* 685 */
	0, /* 686 */
	0, /* 687 */
	0, /* 688 */
	0, /* 689 */
	0, /* 690 */
	0, /* 691 */
	0, /* 692 */
	"I2I", /* 693 */
	0, /* 694 */
	0, /* 695 */
	0, /* 696 */
	0, /* 697 */
	0, /* 698 */
	0, /* 699 */
	0, /* 700 */
	0, /* 701 */
	0, /* 702 */
	0, /* 703 */
	0, /* 704 */
	0, /* 705 */
	0, /* 706 */
	0, /* 707 */
	0, /* 708 */
	"I3I", /* 709 */
	0, /* 710 */
	0, /* 711 */
	0, /* 712 */
	0, /* 713 */
	0, /* 714 */
	0, /* 715 */
	0, /* 716 */
	0, /* 717 */
	0, /* 718 */
	0, /* 719 */
	"NOP", /* 720 */
	0, /* 721 */
	0, /* 722 */
	0, /* 723 */
	0, /* 724 */
	0, /* 725 */
	0, /* 726 */
	0, /* 727 */
	0, /* 728 */
	0, /* 729 */
	0, /* 730 */
	0, /* 731 */
	0, /* 732 */
	0, /* 733 */
	0, /* 734 */
	0, /* 735 */
	0, /* 736 */
	0, /* 737 */
	0, /* 738 */
	0, /* 739 */
	0, /* 740 */
	"LGCNSTI", /* 741 */
	0, /* 742 */
	0, /* 743 */
	0, /* 744 */
	0, /* 745 */
	0, /* 746 */
	0, /* 747 */
	0, /* 748 */
	0, /* 749 */
	0, /* 750 */
	0, /* 751 */
	0, /* 752 */
	0, /* 753 */
	0, /* 754 */
	0, /* 755 */
	0, /* 756 */
	0, /* 757 */
	0, /* 758 */
	"VREGP", /* 759 */
	0, /* 760 */
	0, /* 761 */
	0, /* 762 */
	0, /* 763 */
	0, /* 764 */
	0, /* 765 */
	0, /* 766 */
	0, /* 767 */
	0, /* 768 */
	"FUTUREF", /* 769 */
	"FUTURED", /* 770 */
	"FUTUREC", /* 771 */
	"FUTURES", /* 772 */
	"FUTUREI", /* 773 */
	"FUTUREU", /* 774 */
	"FUTUREP", /* 775 */
	"FUTUREV", /* 776 */
	"FUTUREB", /* 777 */
	0, /* 778 */
	0, /* 779 */
	0, /* 780 */
	0, /* 781 */
	0, /* 782 */
	0, /* 783 */
	0, /* 784 */
	0, /* 785 */
	0, /* 786 */
	0, /* 787 */
	0, /* 788 */
	"TOUCHI", /* 789 */
	"RTOUCH", /* 790 */
	"MTOUCH", /* 791 */
	"MULTIINIT", /* 792 */
	"STOUCH", /* 793 */
	0, /* 794 */
	0, /* 795 */
	0, /* 796 */
	0, /* 797 */
	0, /* 798 */
	0, /* 799 */
	0, /* 800 */
	0, /* 801 */
	0, /* 802 */
	0, /* 803 */
	"GRS", /* 804 */
	"GRI", /* 805 */
	"GRU", /* 806 */
	0, /* 807 */
	0, /* 808 */
	0, /* 809 */
	0, /* 810 */
	0, /* 811 */
	0, /* 812 */
	0, /* 813 */
	0, /* 814 */
	0, /* 815 */
	0, /* 816 */
	0, /* 817 */
	0, /* 818 */
	0, /* 819 */
	0, /* 820 */
	0, /* 821 */
	0, /* 822 */
	0, /* 823 */
	0, /* 824 */
	0, /* 825 */
	0, /* 826 */
	0, /* 827 */
	0, /* 828 */
	0, /* 829 */
	0, /* 830 */
	0, /* 831 */
	0, /* 832 */
	0, /* 833 */
	0, /* 834 */
	0, /* 835 */
	0, /* 836 */
	0, /* 837 */
	0, /* 838 */
	0, /* 839 */
	"MIGRATEV", /* 840 */
	0, /* 841 */
	0, /* 842 */
	0, /* 843 */
	0, /* 844 */
	0, /* 845 */
	0, /* 846 */
	0, /* 847 */
	0, /* 848 */
	0, /* 849 */
	0, /* 850 */
	0, /* 851 */
	0, /* 852 */
	0, /* 853 */
	0, /* 854 */
	"LOCALP", /* 855 */
	0, /* 856 */
	0, /* 857 */
	0, /* 858 */
	0, /* 859 */
	0, /* 860 */
	0, /* 861 */
	0, /* 862 */
	0, /* 863 */
	"RESTORE", /* 864 */
	0, /* 865 */
	0, /* 866 */
	0, /* 867 */
	0, /* 868 */
	0, /* 869 */
	0, /* 870 */
	0, /* 871 */
	0, /* 872 */
	0, /* 873 */
	0, /* 874 */
	0, /* 875 */
	0, /* 876 */
	0, /* 877 */
	0, /* 878 */
	0, /* 879 */
	"NOTEST", /* 880 */
	0, /* 881 */
	0, /* 882 */
	0, /* 883 */
	0, /* 884 */
	0, /* 885 */
	0, /* 886 */
	0, /* 887 */
	0, /* 888 */
	0, /* 889 */
	0, /* 890 */
	0, /* 891 */
	0, /* 892 */
	0, /* 893 */
	0, /* 894 */
	0, /* 895 */
	"RETEST", /* 896 */
	0, /* 897 */
	0, /* 898 */
	0, /* 899 */
	0, /* 900 */
	0, /* 901 */
	0, /* 902 */
	0, /* 903 */
	0, /* 904 */
	0, /* 905 */
	0, /* 906 */
	0, /* 907 */
	0, /* 908 */
	0, /* 909 */
	0, /* 910 */
	0, /* 911 */
	0, /* 912 */
	0, /* 913 */
	0, /* 914 */
	0, /* 915 */
	0, /* 916 */
	0, /* 917 */
	0, /* 918 */
	0, /* 919 */
	0, /* 920 */
	0, /* 921 */
	0, /* 922 */
	0, /* 923 */
	0, /* 924 */
	0, /* 925 */
	0, /* 926 */
	0, /* 927 */
	0, /* 928 */
	0, /* 929 */
	0, /* 930 */
	0, /* 931 */
	0, /* 932 */
	"NONLOCAL", /* 933 */
	0, /* 934 */
	0, /* 935 */
	0, /* 936 */
	0, /* 937 */
	0, /* 938 */
	0, /* 939 */
	0, /* 940 */
	0, /* 941 */
	0, /* 942 */
	0, /* 943 */
	0, /* 944 */
	0, /* 945 */
	0, /* 946 */
	0, /* 947 */
	0, /* 948 */
	"ISLOCPTR", /* 949 */
	0, /* 950 */
	0, /* 951 */
	0, /* 952 */
	0, /* 953 */
	0, /* 954 */
	0, /* 955 */
	0, /* 956 */
	0, /* 957 */
	0, /* 958 */
	0, /* 959 */
	"ALLOCEXT", /* 960 */
	0, /* 961 */
	0, /* 962 */
	0, /* 963 */
	0, /* 964 */
	0, /* 965 */
	0, /* 966 */
	0, /* 967 */
	0, /* 968 */
	0, /* 969 */
	0, /* 970 */
	0, /* 971 */
	0, /* 972 */
	0, /* 973 */
	0, /* 974 */
	0, /* 975 */
	0, /* 976 */
	0, /* 977 */
	0, /* 978 */
	0, /* 979 */
	0, /* 980 */
	0, /* 981 */
	0, /* 982 */
	"BIGLP", /* 983 */
	0, /* 984 */
	0, /* 985 */
	0, /* 986 */
	0, /* 987 */
	0, /* 988 */
	0, /* 989 */
	0, /* 990 */
	0, /* 991 */
	"MERGEPH", /* 992 */
	"UNPHASE", /* 993 */
	"ABORTONMISS", /* 994 */
	"ENDABORTONMISS", /* 995 */
	0, /* 996 */
	0, /* 997 */
	0, /* 998 */
	0, /* 999 */
	0, /* 1000 */
	0, /* 1001 */
	0, /* 1002 */
	0, /* 1003 */
	0, /* 1004 */
	0, /* 1005 */
	0, /* 1006 */
	0, /* 1007 */
	"MIGRPH", /* 1008 */
	0, /* 1009 */
	0, /* 1010 */
	0, /* 1011 */
	0, /* 1012 */
	0, /* 1013 */
	0, /* 1014 */
	0, /* 1015 */
	0, /* 1016 */
	0, /* 1017 */
	0, /* 1018 */
	0, /* 1019 */
	0, /* 1020 */
	0, /* 1021 */
	0, /* 1022 */
	0, /* 1023 */
	0, /* 1024 */
	"CASGNF", /* 1025 */
	"CASGND", /* 1026 */
	"CASGNC", /* 1027 */
	"CASGNS", /* 1028 */
	"CASGNI", /* 1029 */
	0, /* 1030 */
	"CASGNP", /* 1031 */
	0, /* 1032 */
	0, /* 1033 */
	0, /* 1034 */
	0, /* 1035 */
	0, /* 1036 */
	0, /* 1037 */
	0, /* 1038 */
	0, /* 1039 */
	0, /* 1040 */
	"RPCF", /* 1041 */
	"RPCD", /* 1042 */
	"RPCC", /* 1043 */
	"RPCS", /* 1044 */
	"RPCI", /* 1045 */
	"RPCU", /* 1046 */
	"RPCP", /* 1047 */
	"RPCV", /* 1048 */
	"RPCB", /* 1049 */
	0, /* 1050 */
	0, /* 1051 */
	0, /* 1052 */
	0, /* 1053 */
	0, /* 1054 */
	0, /* 1055 */
	0, /* 1056 */
	0, /* 1057 */
	0, /* 1058 */
	0, /* 1059 */
	0, /* 1060 */
	"ATOMICINC", /* 1061 */
	0, /* 1062 */
	0, /* 1063 */
	0, /* 1064 */
	0, /* 1065 */
	0, /* 1066 */
	0, /* 1067 */
	0, /* 1068 */
	0, /* 1069 */
	0, /* 1070 */
	0, /* 1071 */
	0, /* 1072 */
	0, /* 1073 */
	0, /* 1074 */
	0, /* 1075 */
	0, /* 1076 */
	0, /* 1077 */
	0, /* 1078 */
	"MTESTP", /* 1079 */
	0, /* 1080 */
	0, /* 1081 */
	0, /* 1082 */
	0, /* 1083 */
	0, /* 1084 */
	0, /* 1085 */
	0, /* 1086 */
	0, /* 1087 */
	0, /* 1088 */
	0, /* 1089 */
	0, /* 1090 */
	0, /* 1091 */
	0, /* 1092 */
	0, /* 1093 */
	0, /* 1094 */
	"PREFETCHP", /* 1095 */
	0, /* 1096 */
	0, /* 1097 */
	0, /* 1098 */
	0, /* 1099 */
	0, /* 1100 */
	0, /* 1101 */
	0, /* 1102 */
	0, /* 1103 */
	0, /* 1104 */
	"MASGNF", /* 1105 */
	"MASGND", /* 1106 */
	"MASGNC", /* 1107 */
	"MASGNS", /* 1108 */
	"MASGNI", /* 1109 */
	0, /* 1110 */
	"MASGNP", /* 1111 */
	0, /* 1112 */
	"MASGNB", /* 1113 */
	0, /* 1114 */
	0, /* 1115 */
	0, /* 1116 */
	0, /* 1117 */
	0, /* 1118 */
	0, /* 1119 */
	0, /* 1120 */
	"MULTIRPCF", /* 1121 */
	"MULTIRPCD", /* 1122 */
	"MULTIRPCC", /* 1123 */
	"MULTIRPCS", /* 1124 */
	"MULTIRPCI", /* 1125 */
	"MULTIRPCU", /* 1126 */
	"MULTIRPCP", /* 1127 */
	"MULTIRPCV", /* 1128 */
	"MULTIRPCB", /* 1129 */
	0, /* 1130 */
	0, /* 1131 */
	0, /* 1132 */
	0, /* 1133 */
	0, /* 1134 */
	0, /* 1135 */
	0, /* 1136 */
	"MULTIFUTUREF", /* 1137 */
	"MULTIFUTURED", /* 1138 */
	"MULTIFUTUREC", /* 1139 */
	"MULTIFUTURES", /* 1140 */
	"MULTIFUTUREI", /* 1141 */
	"MULTIFUTUREU", /* 1142 */
	"MULTIFUTUREP", /* 1143 */
	"MULTIFUTUREV", /* 1144 */
	"MULTIFUTUREB", /* 1145 */
	0, /* 1146 */
	0, /* 1147 */
	0, /* 1148 */
	0, /* 1149 */
	0, /* 1150 */
	0, /* 1151 */
	0, /* 1152 */
	"RCALLF", /* 1153 */
	"RCALLD", /* 1154 */
	"RCALLC", /* 1155 */
	"RCALLS", /* 1156 */
	"RCALLI", /* 1157 */
	"RCALLU", /* 1158 */
	"RCALLP", /* 1159 */
	"RCALLV", /* 1160 */
	"RCALLB", /* 1161 */
	0, /* 1162 */
	0, /* 1163 */
	0, /* 1164 */
	0, /* 1165 */
	0, /* 1166 */
	0, /* 1167 */
	0, /* 1168 */
	"SFUTUREF", /* 1169 */
	"SFUTURED", /* 1170 */
	"SFUTUREC", /* 1171 */
	"SFUTURES", /* 1172 */
	"SFUTUREI", /* 1173 */
	"SFUTUREU", /* 1174 */
	"SFUTUREP", /* 1175 */
	"SFUTUREV", /* 1176 */
	"SFUTUREB", /* 1177 */
	0, /* 1178 */
	0, /* 1179 */
	0, /* 1180 */
	0, /* 1181 */
	0, /* 1182 */
	0, /* 1183 */
	0, /* 1184 */
	"SRPCF", /* 1185 */
	"SRPCD", /* 1186 */
	"SRPCC", /* 1187 */
	"SRPCS", /* 1188 */
	"SRPCI", /* 1189 */
	"SRPCU", /* 1190 */
	"SRPCP", /* 1191 */
	"SRPCV", /* 1192 */
	"SRPCB"
};
char sparc_arity[] = {
	-1, /* 0 */
	-1, /* 1 */
	-1, /* 2 */
	-1, /* 3 */
	-1, /* 4 */
	-1, /* 5 */
	-1, /* 6 */
	-1, /* 7 */
	-1, /* 8 */
	-1, /* 9 */
	-1, /* 10 */
	-1, /* 11 */
	-1, /* 12 */
	-1, /* 13 */
	-1, /* 14 */
	-1, /* 15 */
	-1, /* 16 */
	-1, /* 17 */
	-1, /* 18 */
	0, /* 19 */
	0, /* 20 */
	0, /* 21 */
	0, /* 22 */
	0, /* 23 */
	-1, /* 24 */
	-1, /* 25 */
	-1, /* 26 */
	-1, /* 27 */
	-1, /* 28 */
	-1, /* 29 */
	-1, /* 30 */
	-1, /* 31 */
	-1, /* 32 */
	1, /* 33 */
	1, /* 34 */
	-1, /* 35 */
	-1, /* 36 */
	1, /* 37 */
	-1, /* 38 */
	1, /* 39 */
	-1, /* 40 */
	1, /* 41 */
	-1, /* 42 */
	-1, /* 43 */
	-1, /* 44 */
	-1, /* 45 */
	-1, /* 46 */
	-1, /* 47 */
	-1, /* 48 */
	2, /* 49 */
	2, /* 50 */
	2, /* 51 */
	2, /* 52 */
	2, /* 53 */
	-1, /* 54 */
	2, /* 55 */
	-1, /* 56 */
	2, /* 57 */
	-1, /* 58 */
	-1, /* 59 */
	-1, /* 60 */
	-1, /* 61 */
	-1, /* 62 */
	-1, /* 63 */
	-1, /* 64 */
	1, /* 65 */
	1, /* 66 */
	1, /* 67 */
	1, /* 68 */
	1, /* 69 */
	-1, /* 70 */
	1, /* 71 */
	-1, /* 72 */
	1, /* 73 */
	-1, /* 74 */
	-1, /* 75 */
	-1, /* 76 */
	-1, /* 77 */
	-1, /* 78 */
	-1, /* 79 */
	-1, /* 80 */
	-1, /* 81 */
	-1, /* 82 */
	-1, /* 83 */
	-1, /* 84 */
	1, /* 85 */
	1, /* 86 */
	-1, /* 87 */
	-1, /* 88 */
	-1, /* 89 */
	-1, /* 90 */
	-1, /* 91 */
	-1, /* 92 */
	-1, /* 93 */
	-1, /* 94 */
	-1, /* 95 */
	-1, /* 96 */
	1, /* 97 */
	-1, /* 98 */
	-1, /* 99 */
	-1, /* 100 */
	1, /* 101 */
	-1, /* 102 */
	-1, /* 103 */
	-1, /* 104 */
	-1, /* 105 */
	-1, /* 106 */
	-1, /* 107 */
	-1, /* 108 */
	-1, /* 109 */
	-1, /* 110 */
	-1, /* 111 */
	-1, /* 112 */
	-1, /* 113 */
	1, /* 114 */
	-1, /* 115 */
	-1, /* 116 */
	-1, /* 117 */
	-1, /* 118 */
	-1, /* 119 */
	-1, /* 120 */
	-1, /* 121 */
	-1, /* 122 */
	-1, /* 123 */
	-1, /* 124 */
	-1, /* 125 */
	-1, /* 126 */
	-1, /* 127 */
	-1, /* 128 */
	-1, /* 129 */
	1, /* 130 */
	1, /* 131 */
	1, /* 132 */
	-1, /* 133 */
	1, /* 134 */
	-1, /* 135 */
	-1, /* 136 */
	-1, /* 137 */
	-1, /* 138 */
	-1, /* 139 */
	-1, /* 140 */
	-1, /* 141 */
	-1, /* 142 */
	-1, /* 143 */
	-1, /* 144 */
	-1, /* 145 */
	-1, /* 146 */
	-1, /* 147 */
	-1, /* 148 */
	-1, /* 149 */
	1, /* 150 */
	-1, /* 151 */
	-1, /* 152 */
	-1, /* 153 */
	-1, /* 154 */
	-1, /* 155 */
	-1, /* 156 */
	-1, /* 157 */
	-1, /* 158 */
	-1, /* 159 */
	-1, /* 160 */
	-1, /* 161 */
	-1, /* 162 */
	-1, /* 163 */
	-1, /* 164 */
	1, /* 165 */
	1, /* 166 */
	-1, /* 167 */
	-1, /* 168 */
	-1, /* 169 */
	-1, /* 170 */
	-1, /* 171 */
	-1, /* 172 */
	-1, /* 173 */
	-1, /* 174 */
	-1, /* 175 */
	-1, /* 176 */
	-1, /* 177 */
	-1, /* 178 */
	1, /* 179 */
	1, /* 180 */
	1, /* 181 */
	-1, /* 182 */
	1, /* 183 */
	-1, /* 184 */
	-1, /* 185 */
	-1, /* 186 */
	-1, /* 187 */
	-1, /* 188 */
	-1, /* 189 */
	-1, /* 190 */
	-1, /* 191 */
	-1, /* 192 */
	1, /* 193 */
	1, /* 194 */
	-1, /* 195 */
	-1, /* 196 */
	1, /* 197 */
	-1, /* 198 */
	-1, /* 199 */
	-1, /* 200 */
	-1, /* 201 */
	-1, /* 202 */
	-1, /* 203 */
	-1, /* 204 */
	-1, /* 205 */
	-1, /* 206 */
	-1, /* 207 */
	-1, /* 208 */
	1, /* 209 */
	1, /* 210 */
	-1, /* 211 */
	-1, /* 212 */
	1, /* 213 */
	-1, /* 214 */
	-1, /* 215 */
	1, /* 216 */
	2, /* 217 */
	-1, /* 218 */
	-1, /* 219 */
	-1, /* 220 */
	-1, /* 221 */
	-1, /* 222 */
	-1, /* 223 */
	-1, /* 224 */
	1, /* 225 */
	1, /* 226 */
	1, /* 227 */
	1, /* 228 */
	1, /* 229 */
	1, /* 230 */
	1, /* 231 */
	-1, /* 232 */
	1, /* 233 */
	-1, /* 234 */
	-1, /* 235 */
	-1, /* 236 */
	-1, /* 237 */
	-1, /* 238 */
	-1, /* 239 */
	-1, /* 240 */
	1, /* 241 */
	1, /* 242 */
	-1, /* 243 */
	-1, /* 244 */
	1, /* 245 */
	-1, /* 246 */
	-1, /* 247 */
	0, /* 248 */
	-1, /* 249 */
	-1, /* 250 */
	-1, /* 251 */
	-1, /* 252 */
	-1, /* 253 */
	-1, /* 254 */
	-1, /* 255 */
	-1, /* 256 */
	-1, /* 257 */
	-1, /* 258 */
	-1, /* 259 */
	-1, /* 260 */
	-1, /* 261 */
	-1, /* 262 */
	0, /* 263 */
	-1, /* 264 */
	-1, /* 265 */
	-1, /* 266 */
	-1, /* 267 */
	-1, /* 268 */
	-1, /* 269 */
	-1, /* 270 */
	-1, /* 271 */
	-1, /* 272 */
	-1, /* 273 */
	-1, /* 274 */
	-1, /* 275 */
	-1, /* 276 */
	-1, /* 277 */
	-1, /* 278 */
	0, /* 279 */
	-1, /* 280 */
	-1, /* 281 */
	-1, /* 282 */
	-1, /* 283 */
	-1, /* 284 */
	-1, /* 285 */
	-1, /* 286 */
	-1, /* 287 */
	-1, /* 288 */
	-1, /* 289 */
	-1, /* 290 */
	-1, /* 291 */
	-1, /* 292 */
	-1, /* 293 */
	-1, /* 294 */
	0, /* 295 */
	-1, /* 296 */
	-1, /* 297 */
	-1, /* 298 */
	-1, /* 299 */
	-1, /* 300 */
	-1, /* 301 */
	-1, /* 302 */
	-1, /* 303 */
	-1, /* 304 */
	2, /* 305 */
	2, /* 306 */
	-1, /* 307 */
	-1, /* 308 */
	2, /* 309 */
	2, /* 310 */
	2, /* 311 */
	-1, /* 312 */
	-1, /* 313 */
	-1, /* 314 */
	-1, /* 315 */
	-1, /* 316 */
	-1, /* 317 */
	-1, /* 318 */
	-1, /* 319 */
	-1, /* 320 */
	2, /* 321 */
	2, /* 322 */
	-1, /* 323 */
	-1, /* 324 */
	2, /* 325 */
	2, /* 326 */
	2, /* 327 */
	-1, /* 328 */
	-1, /* 329 */
	-1, /* 330 */
	-1, /* 331 */
	-1, /* 332 */
	-1, /* 333 */
	-1, /* 334 */
	-1, /* 335 */
	-1, /* 336 */
	-1, /* 337 */
	-1, /* 338 */
	-1, /* 339 */
	-1, /* 340 */
	2, /* 341 */
	2, /* 342 */
	-1, /* 343 */
	-1, /* 344 */
	-1, /* 345 */
	-1, /* 346 */
	-1, /* 347 */
	-1, /* 348 */
	-1, /* 349 */
	-1, /* 350 */
	-1, /* 351 */
	-1, /* 352 */
	-1, /* 353 */
	-1, /* 354 */
	-1, /* 355 */
	-1, /* 356 */
	2, /* 357 */
	2, /* 358 */
	-1, /* 359 */
	-1, /* 360 */
	-1, /* 361 */
	-1, /* 362 */
	-1, /* 363 */
	-1, /* 364 */
	-1, /* 365 */
	-1, /* 366 */
	-1, /* 367 */
	-1, /* 368 */
	-1, /* 369 */
	-1, /* 370 */
	-1, /* 371 */
	-1, /* 372 */
	2, /* 373 */
	2, /* 374 */
	-1, /* 375 */
	-1, /* 376 */
	-1, /* 377 */
	-1, /* 378 */
	-1, /* 379 */
	-1, /* 380 */
	-1, /* 381 */
	-1, /* 382 */
	-1, /* 383 */
	-1, /* 384 */
	-1, /* 385 */
	-1, /* 386 */
	-1, /* 387 */
	-1, /* 388 */
	-1, /* 389 */
	2, /* 390 */
	-1, /* 391 */
	-1, /* 392 */
	-1, /* 393 */
	-1, /* 394 */
	-1, /* 395 */
	-1, /* 396 */
	-1, /* 397 */
	-1, /* 398 */
	-1, /* 399 */
	-1, /* 400 */
	-1, /* 401 */
	-1, /* 402 */
	-1, /* 403 */
	-1, /* 404 */
	-1, /* 405 */
	1, /* 406 */
	-1, /* 407 */
	-1, /* 408 */
	-1, /* 409 */
	-1, /* 410 */
	-1, /* 411 */
	-1, /* 412 */
	-1, /* 413 */
	-1, /* 414 */
	-1, /* 415 */
	-1, /* 416 */
	-1, /* 417 */
	-1, /* 418 */
	-1, /* 419 */
	-1, /* 420 */
	-1, /* 421 */
	2, /* 422 */
	-1, /* 423 */
	-1, /* 424 */
	-1, /* 425 */
	-1, /* 426 */
	-1, /* 427 */
	-1, /* 428 */
	-1, /* 429 */
	-1, /* 430 */
	-1, /* 431 */
	-1, /* 432 */
	-1, /* 433 */
	-1, /* 434 */
	-1, /* 435 */
	-1, /* 436 */
	-1, /* 437 */
	2, /* 438 */
	-1, /* 439 */
	-1, /* 440 */
	-1, /* 441 */
	-1, /* 442 */
	-1, /* 443 */
	-1, /* 444 */
	-1, /* 445 */
	-1, /* 446 */
	-1, /* 447 */
	-1, /* 448 */
	2, /* 449 */
	2, /* 450 */
	-1, /* 451 */
	-1, /* 452 */
	2, /* 453 */
	2, /* 454 */
	-1, /* 455 */
	-1, /* 456 */
	-1, /* 457 */
	-1, /* 458 */
	-1, /* 459 */
	-1, /* 460 */
	-1, /* 461 */
	-1, /* 462 */
	-1, /* 463 */
	-1, /* 464 */
	2, /* 465 */
	2, /* 466 */
	-1, /* 467 */
	-1, /* 468 */
	2, /* 469 */
	2, /* 470 */
	-1, /* 471 */
	-1, /* 472 */
	-1, /* 473 */
	-1, /* 474 */
	-1, /* 475 */
	-1, /* 476 */
	-1, /* 477 */
	-1, /* 478 */
	-1, /* 479 */
	-1, /* 480 */
	2, /* 481 */
	2, /* 482 */
	-1, /* 483 */
	-1, /* 484 */
	2, /* 485 */
	-1, /* 486 */
	-1, /* 487 */
	-1, /* 488 */
	-1, /* 489 */
	-1, /* 490 */
	-1, /* 491 */
	-1, /* 492 */
	-1, /* 493 */
	-1, /* 494 */
	-1, /* 495 */
	-1, /* 496 */
	2, /* 497 */
	2, /* 498 */
	-1, /* 499 */
	-1, /* 500 */
	2, /* 501 */
	2, /* 502 */
	-1, /* 503 */
	-1, /* 504 */
	-1, /* 505 */
	-1, /* 506 */
	-1, /* 507 */
	-1, /* 508 */
	-1, /* 509 */
	-1, /* 510 */
	-1, /* 511 */
	-1, /* 512 */
	2, /* 513 */
	2, /* 514 */
	-1, /* 515 */
	-1, /* 516 */
	2, /* 517 */
	2, /* 518 */
	-1, /* 519 */
	-1, /* 520 */
	-1, /* 521 */
	-1, /* 522 */
	-1, /* 523 */
	-1, /* 524 */
	-1, /* 525 */
	-1, /* 526 */
	-1, /* 527 */
	-1, /* 528 */
	2, /* 529 */
	2, /* 530 */
	-1, /* 531 */
	-1, /* 532 */
	2, /* 533 */
	2, /* 534 */
	-1, /* 535 */
	-1, /* 536 */
	-1, /* 537 */
	-1, /* 538 */
	-1, /* 539 */
	-1, /* 540 */
	-1, /* 541 */
	-1, /* 542 */
	-1, /* 543 */
	-1, /* 544 */
	2, /* 545 */
	2, /* 546 */
	-1, /* 547 */
	-1, /* 548 */
	2, /* 549 */
	2, /* 550 */
	-1, /* 551 */
	-1, /* 552 */
	-1, /* 553 */
	-1, /* 554 */
	-1, /* 555 */
	-1, /* 556 */
	-1, /* 557 */
	-1, /* 558 */
	-1, /* 559 */
	-1, /* 560 */
	2, /* 561 */
	2, /* 562 */
	-1, /* 563 */
	-1, /* 564 */
	2, /* 565 */
	-1, /* 566 */
	-1, /* 567 */
	-1, /* 568 */
	-1, /* 569 */
	-1, /* 570 */
	-1, /* 571 */
	-1, /* 572 */
	-1, /* 573 */
	-1, /* 574 */
	-1, /* 575 */
	-1, /* 576 */
	-1, /* 577 */
	-1, /* 578 */
	-1, /* 579 */
	-1, /* 580 */
	-1, /* 581 */
	-1, /* 582 */
	-1, /* 583 */
	1, /* 584 */
	-1, /* 585 */
	-1, /* 586 */
	-1, /* 587 */
	-1, /* 588 */
	-1, /* 589 */
	-1, /* 590 */
	-1, /* 591 */
	-1, /* 592 */
	-1, /* 593 */
	-1, /* 594 */
	-1, /* 595 */
	-1, /* 596 */
	-1, /* 597 */
	-1, /* 598 */
	-1, /* 599 */
	0, /* 600 */
	-1, /* 601 */
	-1, /* 602 */
	-1, /* 603 */
	-1, /* 604 */
	-1, /* 605 */
	-1, /* 606 */
	-1, /* 607 */
	-1, /* 608 */
	-1, /* 609 */
	-1, /* 610 */
	-1, /* 611 */
	-1, /* 612 */
	-1, /* 613 */
	-1, /* 614 */
	1, /* 615 */
	-1, /* 616 */
	-1, /* 617 */
	-1, /* 618 */
	-1, /* 619 */
	-1, /* 620 */
	-1, /* 621 */
	-1, /* 622 */
	-1, /* 623 */
	-1, /* 624 */
	-1, /* 625 */
	-1, /* 626 */
	-1, /* 627 */
	-1, /* 628 */
	-1, /* 629 */
	-1, /* 630 */
	-1, /* 631 */
	-1, /* 632 */
	-1, /* 633 */
	-1, /* 634 */
	-1, /* 635 */
	-1, /* 636 */
	-1, /* 637 */
	-1, /* 638 */
	-1, /* 639 */
	-1, /* 640 */
	-1, /* 641 */
	-1, /* 642 */
	-1, /* 643 */
	-1, /* 644 */
	-1, /* 645 */
	-1, /* 646 */
	-1, /* 647 */
	-1, /* 648 */
	-1, /* 649 */
	-1, /* 650 */
	-1, /* 651 */
	-1, /* 652 */
	-1, /* 653 */
	-1, /* 654 */
	-1, /* 655 */
	-1, /* 656 */
	-1, /* 657 */
	-1, /* 658 */
	-1, /* 659 */
	-1, /* 660 */
	0, /* 661 */
	-1, /* 662 */
	-1, /* 663 */
	-1, /* 664 */
	-1, /* 665 */
	-1, /* 666 */
	-1, /* 667 */
	-1, /* 668 */
	-1, /* 669 */
	-1, /* 670 */
	-1, /* 671 */
	-1, /* 672 */
	-1, /* 673 */
	-1, /* 674 */
	-1, /* 675 */
	-1, /* 676 */
	0, /* 677 */
	-1, /* 678 */
	-1, /* 679 */
	-1, /* 680 */
	-1, /* 681 */
	-1, /* 682 */
	-1, /* 683 */
	-1, /* 684 */
	-1, /* 685 */
	-1, /* 686 */
	-1, /* 687 */
	-1, /* 688 */
	-1, /* 689 */
	-1, /* 690 */
	-1, /* 691 */
	-1, /* 692 */
	0, /* 693 */
	-1, /* 694 */
	-1, /* 695 */
	-1, /* 696 */
	-1, /* 697 */
	-1, /* 698 */
	-1, /* 699 */
	-1, /* 700 */
	-1, /* 701 */
	-1, /* 702 */
	-1, /* 703 */
	-1, /* 704 */
	-1, /* 705 */
	-1, /* 706 */
	-1, /* 707 */
	-1, /* 708 */
	0, /* 709 */
	-1, /* 710 */
	-1, /* 711 */
	-1, /* 712 */
	-1, /* 713 */
	-1, /* 714 */
	-1, /* 715 */
	-1, /* 716 */
	-1, /* 717 */
	-1, /* 718 */
	-1, /* 719 */
	1, /* 720 */
	-1, /* 721 */
	-1, /* 722 */
	-1, /* 723 */
	-1, /* 724 */
	-1, /* 725 */
	-1, /* 726 */
	-1, /* 727 */
	-1, /* 728 */
	-1, /* 729 */
	-1, /* 730 */
	-1, /* 731 */
	-1, /* 732 */
	-1, /* 733 */
	-1, /* 734 */
	-1, /* 735 */
	-1, /* 736 */
	-1, /* 737 */
	-1, /* 738 */
	-1, /* 739 */
	-1, /* 740 */
	0, /* 741 */
	-1, /* 742 */
	-1, /* 743 */
	-1, /* 744 */
	-1, /* 745 */
	-1, /* 746 */
	-1, /* 747 */
	-1, /* 748 */
	-1, /* 749 */
	-1, /* 750 */
	-1, /* 751 */
	-1, /* 752 */
	-1, /* 753 */
	-1, /* 754 */
	-1, /* 755 */
	-1, /* 756 */
	-1, /* 757 */
	-1, /* 758 */
	0, /* 759 */
	-1, /* 760 */
	-1, /* 761 */
	-1, /* 762 */
	-1, /* 763 */
	-1, /* 764 */
	-1, /* 765 */
	-1, /* 766 */
	-1, /* 767 */
	-1, /* 768 */
	1, /* 769 */
	1, /* 770 */
	1, /* 771 */
	1, /* 772 */
	1, /* 773 */
	1, /* 774 */
	1, /* 775 */
	1, /* 776 */
	1, /* 777 */
	-1, /* 778 */
	-1, /* 779 */
	-1, /* 780 */
	-1, /* 781 */
	-1, /* 782 */
	-1, /* 783 */
	-1, /* 784 */
	-1, /* 785 */
	-1, /* 786 */
	-1, /* 787 */
	-1, /* 788 */
	1, /* 789 */
	1, /* 790 */
	1, /* 791 */
	1, /* 792 */
	1, /* 793 */
	-1, /* 794 */
	-1, /* 795 */
	-1, /* 796 */
	-1, /* 797 */
	-1, /* 798 */
	-1, /* 799 */
	-1, /* 800 */
	-1, /* 801 */
	-1, /* 802 */
	-1, /* 803 */
	1, /* 804 */
	1, /* 805 */
	1, /* 806 */
	-1, /* 807 */
	-1, /* 808 */
	-1, /* 809 */
	-1, /* 810 */
	-1, /* 811 */
	-1, /* 812 */
	-1, /* 813 */
	-1, /* 814 */
	-1, /* 815 */
	-1, /* 816 */
	-1, /* 817 */
	-1, /* 818 */
	-1, /* 819 */
	-1, /* 820 */
	-1, /* 821 */
	-1, /* 822 */
	-1, /* 823 */
	-1, /* 824 */
	-1, /* 825 */
	-1, /* 826 */
	-1, /* 827 */
	-1, /* 828 */
	-1, /* 829 */
	-1, /* 830 */
	-1, /* 831 */
	-1, /* 832 */
	-1, /* 833 */
	-1, /* 834 */
	-1, /* 835 */
	-1, /* 836 */
	-1, /* 837 */
	-1, /* 838 */
	-1, /* 839 */
	1, /* 840 */
	-1, /* 841 */
	-1, /* 842 */
	-1, /* 843 */
	-1, /* 844 */
	-1, /* 845 */
	-1, /* 846 */
	-1, /* 847 */
	-1, /* 848 */
	-1, /* 849 */
	-1, /* 850 */
	-1, /* 851 */
	-1, /* 852 */
	-1, /* 853 */
	-1, /* 854 */
	1, /* 855 */
	-1, /* 856 */
	-1, /* 857 */
	-1, /* 858 */
	-1, /* 859 */
	-1, /* 860 */
	-1, /* 861 */
	-1, /* 862 */
	-1, /* 863 */
	1, /* 864 */
	-1, /* 865 */
	-1, /* 866 */
	-1, /* 867 */
	-1, /* 868 */
	-1, /* 869 */
	-1, /* 870 */
	-1, /* 871 */
	-1, /* 872 */
	-1, /* 873 */
	-1, /* 874 */
	-1, /* 875 */
	-1, /* 876 */
	-1, /* 877 */
	-1, /* 878 */
	-1, /* 879 */
	1, /* 880 */
	-1, /* 881 */
	-1, /* 882 */
	-1, /* 883 */
	-1, /* 884 */
	-1, /* 885 */
	-1, /* 886 */
	-1, /* 887 */
	-1, /* 888 */
	-1, /* 889 */
	-1, /* 890 */
	-1, /* 891 */
	-1, /* 892 */
	-1, /* 893 */
	-1, /* 894 */
	-1, /* 895 */
	1, /* 896 */
	-1, /* 897 */
	-1, /* 898 */
	-1, /* 899 */
	-1, /* 900 */
	-1, /* 901 */
	-1, /* 902 */
	-1, /* 903 */
	-1, /* 904 */
	-1, /* 905 */
	-1, /* 906 */
	-1, /* 907 */
	-1, /* 908 */
	-1, /* 909 */
	-1, /* 910 */
	-1, /* 911 */
	-1, /* 912 */
	-1, /* 913 */
	-1, /* 914 */
	-1, /* 915 */
	-1, /* 916 */
	-1, /* 917 */
	-1, /* 918 */
	-1, /* 919 */
	-1, /* 920 */
	-1, /* 921 */
	-1, /* 922 */
	-1, /* 923 */
	-1, /* 924 */
	-1, /* 925 */
	-1, /* 926 */
	-1, /* 927 */
	-1, /* 928 */
	-1, /* 929 */
	-1, /* 930 */
	-1, /* 931 */
	-1, /* 932 */
	1, /* 933 */
	-1, /* 934 */
	-1, /* 935 */
	-1, /* 936 */
	-1, /* 937 */
	-1, /* 938 */
	-1, /* 939 */
	-1, /* 940 */
	-1, /* 941 */
	-1, /* 942 */
	-1, /* 943 */
	-1, /* 944 */
	-1, /* 945 */
	-1, /* 946 */
	-1, /* 947 */
	-1, /* 948 */
	1, /* 949 */
	-1, /* 950 */
	-1, /* 951 */
	-1, /* 952 */
	-1, /* 953 */
	-1, /* 954 */
	-1, /* 955 */
	-1, /* 956 */
	-1, /* 957 */
	-1, /* 958 */
	-1, /* 959 */
	0, /* 960 */
	-1, /* 961 */
	-1, /* 962 */
	-1, /* 963 */
	-1, /* 964 */
	-1, /* 965 */
	-1, /* 966 */
	-1, /* 967 */
	-1, /* 968 */
	-1, /* 969 */
	-1, /* 970 */
	-1, /* 971 */
	-1, /* 972 */
	-1, /* 973 */
	-1, /* 974 */
	-1, /* 975 */
	-1, /* 976 */
	-1, /* 977 */
	-1, /* 978 */
	-1, /* 979 */
	-1, /* 980 */
	-1, /* 981 */
	-1, /* 982 */
	0, /* 983 */
	-1, /* 984 */
	-1, /* 985 */
	-1, /* 986 */
	-1, /* 987 */
	-1, /* 988 */
	-1, /* 989 */
	-1, /* 990 */
	-1, /* 991 */
	1, /* 992 */
	1, /* 993 */
	1, /* 994 */
	1, /* 995 */
	-1, /* 996 */
	-1, /* 997 */
	-1, /* 998 */
	-1, /* 999 */
	-1, /* 1000 */
	-1, /* 1001 */
	-1, /* 1002 */
	-1, /* 1003 */
	-1, /* 1004 */
	-1, /* 1005 */
	-1, /* 1006 */
	-1, /* 1007 */
	1, /* 1008 */
	-1, /* 1009 */
	-1, /* 1010 */
	-1, /* 1011 */
	-1, /* 1012 */
	-1, /* 1013 */
	-1, /* 1014 */
	-1, /* 1015 */
	-1, /* 1016 */
	-1, /* 1017 */
	-1, /* 1018 */
	-1, /* 1019 */
	-1, /* 1020 */
	-1, /* 1021 */
	-1, /* 1022 */
	-1, /* 1023 */
	-1, /* 1024 */
	2, /* 1025 */
	2, /* 1026 */
	2, /* 1027 */
	2, /* 1028 */
	2, /* 1029 */
	-1, /* 1030 */
	2, /* 1031 */
	-1, /* 1032 */
	-1, /* 1033 */
	-1, /* 1034 */
	-1, /* 1035 */
	-1, /* 1036 */
	-1, /* 1037 */
	-1, /* 1038 */
	-1, /* 1039 */
	-1, /* 1040 */
	1, /* 1041 */
	1, /* 1042 */
	1, /* 1043 */
	1, /* 1044 */
	1, /* 1045 */
	1, /* 1046 */
	1, /* 1047 */
	1, /* 1048 */
	1, /* 1049 */
	-1, /* 1050 */
	-1, /* 1051 */
	-1, /* 1052 */
	-1, /* 1053 */
	-1, /* 1054 */
	-1, /* 1055 */
	-1, /* 1056 */
	-1, /* 1057 */
	-1, /* 1058 */
	-1, /* 1059 */
	-1, /* 1060 */
	1, /* 1061 */
	-1, /* 1062 */
	-1, /* 1063 */
	-1, /* 1064 */
	-1, /* 1065 */
	-1, /* 1066 */
	-1, /* 1067 */
	-1, /* 1068 */
	-1, /* 1069 */
	-1, /* 1070 */
	-1, /* 1071 */
	-1, /* 1072 */
	-1, /* 1073 */
	-1, /* 1074 */
	-1, /* 1075 */
	-1, /* 1076 */
	-1, /* 1077 */
	-1, /* 1078 */
	1, /* 1079 */
	-1, /* 1080 */
	-1, /* 1081 */
	-1, /* 1082 */
	-1, /* 1083 */
	-1, /* 1084 */
	-1, /* 1085 */
	-1, /* 1086 */
	-1, /* 1087 */
	-1, /* 1088 */
	-1, /* 1089 */
	-1, /* 1090 */
	-1, /* 1091 */
	-1, /* 1092 */
	-1, /* 1093 */
	-1, /* 1094 */
	1, /* 1095 */
	-1, /* 1096 */
	-1, /* 1097 */
	-1, /* 1098 */
	-1, /* 1099 */
	-1, /* 1100 */
	-1, /* 1101 */
	-1, /* 1102 */
	-1, /* 1103 */
	-1, /* 1104 */
	2, /* 1105 */
	2, /* 1106 */
	2, /* 1107 */
	2, /* 1108 */
	2, /* 1109 */
	-1, /* 1110 */
	2, /* 1111 */
	-1, /* 1112 */
	2, /* 1113 */
	-1, /* 1114 */
	-1, /* 1115 */
	-1, /* 1116 */
	-1, /* 1117 */
	-1, /* 1118 */
	-1, /* 1119 */
	-1, /* 1120 */
	1, /* 1121 */
	1, /* 1122 */
	1, /* 1123 */
	1, /* 1124 */
	1, /* 1125 */
	1, /* 1126 */
	1, /* 1127 */
	1, /* 1128 */
	1, /* 1129 */
	-1, /* 1130 */
	-1, /* 1131 */
	-1, /* 1132 */
	-1, /* 1133 */
	-1, /* 1134 */
	-1, /* 1135 */
	-1, /* 1136 */
	1, /* 1137 */
	1, /* 1138 */
	1, /* 1139 */
	1, /* 1140 */
	1, /* 1141 */
	1, /* 1142 */
	1, /* 1143 */
	1, /* 1144 */
	1, /* 1145 */
	-1, /* 1146 */
	-1, /* 1147 */
	-1, /* 1148 */
	-1, /* 1149 */
	-1, /* 1150 */
	-1, /* 1151 */
	-1, /* 1152 */
	1, /* 1153 */
	1, /* 1154 */
	1, /* 1155 */
	1, /* 1156 */
	1, /* 1157 */
	1, /* 1158 */
	1, /* 1159 */
	1, /* 1160 */
	1, /* 1161 */
	-1, /* 1162 */
	-1, /* 1163 */
	-1, /* 1164 */
	-1, /* 1165 */
	-1, /* 1166 */
	-1, /* 1167 */
	-1, /* 1168 */
	1, /* 1169 */
	1, /* 1170 */
	1, /* 1171 */
	1, /* 1172 */
	1, /* 1173 */
	1, /* 1174 */
	1, /* 1175 */
	1, /* 1176 */
	1, /* 1177 */
	-1, /* 1178 */
	-1, /* 1179 */
	-1, /* 1180 */
	-1, /* 1181 */
	-1, /* 1182 */
	-1, /* 1183 */
	-1, /* 1184 */
	1, /* 1185 */
	1, /* 1186 */
	1, /* 1187 */
	1, /* 1188 */
	1, /* 1189 */
	1, /* 1190 */
	1, /* 1191 */
	1, /* 1192 */
	1
};
int sparc_max_op = 1193;
int sparc_max_state = 247;
char *sparc_string[] = {
	0,
	"acon: ADDRGP",
	"acon: con",
	"addr: ADDRFP",
	"addr: ADDRLP",
	"stmt: NOP(reg)",
	"addr: reg",
	"ar: acon",
	"ar: reg",
	"rc: con",
	"rc: reg",
	"reg: ADDRGP",
	"reg: BCOMU(reg)",
	"reg: BXORU(reg, BCOMU(rc))",
	"reg: BXORU(reg, rc)",
	"reg: CALLD(ar)",
	"reg: CALLF(ar)",
	"reg: CALLI(ar)",
	"reg: CVCI(INDIRC(addr))",
	"reg: CVCI(reg)",
	"reg: CVCU(INDIRC(addr))",
	"reg: CVCU(reg)",
	"reg: CVDF(reg)",
	"reg: CVDI(reg)",
	"reg: CVFD(reg)",
	"reg: CVID(reg)",
	"reg: CVSI(INDIRS(addr))",
	"reg: CVSI(reg)",
	"reg: CVSU(INDIRS(addr))",
	"reg: CVSU(reg)",
	"reg: LOADD(reg)",
	"reg: LOADF(reg)",
	"reg: NEGD(reg)",
	"reg: NEGF(reg)",
	"reg: NEGI(reg)",
	"reg: con",
	"stmt: ARGD(reg)",
	"stmt: ARGF(reg)",
	"stmt: ASGNB(reg, reg)",
	"stmt: CALLB(ar, reg)",
	"stmt: CALLV(ar)",
	"stmt: JUMPV(acon)",
	"stmt: JUMPV(reg)",
	"stmt: LABELV",
	"stmt: RETV",
	"stmt: reg",
	"addr: ADDI(reg, rc)",
	"addr: ADDP(reg, rc)",
	"addr: ADDU(reg, rc)",
	"con: CNSTI",
	"con: CNSTP",
	"con: CNSTU",
	"con: CNSTC",
	"con: CNSTS",
	"con: I0I",
	"con: I1I",
	"con: I2I",
	"con: I3I",
	"reg: ADDF(reg, reg)",
	"reg: ADDD(reg, reg)",
	"reg: SUBF(reg, reg)",
	"reg: SUBD(reg, reg)",
	"reg: MULF(reg, reg)",
	"reg: MULD(reg, reg)",
	"reg: DIVF(reg, reg)",
	"reg: DIVD(reg, reg)",
	"reg: BANDU(reg, BCOMU(rc))",
	"reg: BORU(reg, BCOMU(rc))",
	"reg: BANDU(reg, rc)",
	"reg: BORU(reg, rc)",
	"reg: CVIC(reg)",
	"reg: CVIS(reg)",
	"reg: CVIU(reg)",
	"reg: CVUC(reg)",
	"reg: CVUS(reg)",
	"reg: CVUI(reg)",
	"reg: CVPU(reg)",
	"reg: CVUP(reg)",
	"reg: INDIRB(reg)",
	"reg: LOADC(reg)",
	"reg: LOADS(reg)",
	"reg: LOADI(reg)",
	"reg: LOADP(reg)",
	"reg: LOADU(reg)",
	"reg: LOADB(reg)",
	"reg: DIVI(reg, reg)",
	"reg: DIVU(reg, reg)",
	"reg: MODI(reg, reg)",
	"reg: MODU(reg, reg)",
	"reg: MULI(reg, reg)",
	"reg: MULU(reg, reg)",
	"reg: I0I",
	"reg: INDIRF(addr)",
	"reg: INDIRD(reg)",
	"reg: INDIRI(addr)",
	"reg: INDIRP(addr)",
	"reg: INDIRC(addr)",
	"reg: INDIRS(addr)",
	"reg: INDIRF(VREGP)",
	"reg: INDIRD(VREGP)",
	"reg: INDIRI(VREGP)",
	"reg: INDIRP(VREGP)",
	"reg: INDIRC(VREGP)",
	"reg: INDIRS(VREGP)",
	"stmt: EQI(reg, rc)",
	"stmt: NEI(reg, rc)",
	"stmt: GTI(reg, rc)",
	"stmt: GEI(reg, rc)",
	"stmt: LTI(reg, rc)",
	"stmt: LEI(reg, rc)",
	"stmt: GTU(reg, rc)",
	"stmt: GEU(reg, rc)",
	"stmt: LTU(reg, rc)",
	"stmt: LEU(reg, rc)",
	"stmt: ARGI(reg)",
	"stmt: ARGP(reg)",
	"stmt: ASGNF(addr, reg)",
	"stmt: ASGND(reg, reg)",
	"stmt: ASGNI(addr, reg)",
	"stmt: ASGNP(addr, reg)",
	"stmt: ASGNC(addr, reg)",
	"stmt: ASGNS(addr, reg)",
	"stmt: ASGNF(VREGP, reg)",
	"stmt: ASGND(VREGP, reg)",
	"stmt: ASGNI(VREGP, reg)",
	"stmt: ASGNP(VREGP, reg)",
	"stmt: ASGNC(VREGP, reg)",
	"stmt: ASGNS(VREGP, reg)",
	"stmt: RETF(reg)",
	"stmt: RETD(reg)",
	"stmt: RETI(reg)",
	"reg: ADDI(reg, rc)",
	"reg: ADDP(reg, rc)",
	"reg: ADDU(reg, rc)",
	"reg: SUBI(reg, rc)",
	"reg: SUBP(reg, rc)",
	"reg: SUBU(reg, rc)",
	"reg: LSHI(reg, rc)",
	"reg: LSHU(reg, rc)",
	"reg: RSHU(reg, rc)",
	"reg: RSHI(reg, rc)",
	"reg: ADDRLP",
	"stmt: LTF(reg, reg)",
	"stmt: LTD(reg, reg)",
	"stmt: LEF(reg, reg)",
	"stmt: LED(reg, reg)",
	"stmt: GTF(reg, reg)",
	"stmt: GTD(reg, reg)",
	"stmt: GEF(reg, reg)",
	"stmt: GED(reg, reg)",
	"stmt: EQF(reg, reg)",
	"stmt: EQD(reg, reg)",
	"stmt: NEF(reg, reg)",
	"stmt: NED(reg, reg)",
	"reg: LGCNSTI",
	"reg: TESTP(VREGP)",
	"reg: TESTP(reg)",
	"reg: ADDRFP",
	"stmt: ARGB(INDIRB(reg))",
	"stmt: ALLOCEXT",
	"stmt: GRS(reg)",
	"reg: FUTUREF(ar)",
	"reg: FUTURED(ar)",
	"reg: FUTUREC(ar)",
	"reg: FUTURES(ar)",
	"reg: FUTUREI(ar)",
	"reg: FUTUREU(ar)",
	"reg: FUTUREP(ar)",
	"reg: FUTUREV(ar)",
	"reg: FUTUREB(ar)",
	"reg: NOTEST(ar)",
	"reg: RETEST(ar)",
	"reg: TOUCHI(ar)",
	"reg: MIGRATEV(ar)",
	"reg: NONLOCAL(ar)",
	"reg: ISLOCPTR(ar)",
	"reg: RESTORE(ar)",
	"reg: BIGLP",
	"reg: MERGEPH(ar)",
	"reg: UNPHASE(ar)",
	"reg: MIGRPH(ar)",
	"stmt: CASGNF(reg, reg)",
	"stmt: CASGND(reg, reg)",
	"stmt: CASGNC(reg, reg)",
	"stmt: CASGNS(reg, reg)",
	"stmt: CASGNI(reg, reg)",
	"stmt: CASGNP(reg, reg)",
	"reg: RPCF(ar)",
	"reg: RPCD(ar)",
	"reg: RPCC(ar)",
	"reg: RPCS(ar)",
	"reg: RPCI(ar)",
	"reg: RPCU(ar)",
	"reg: RPCP(ar)",
	"reg: RPCV(ar)",
	"reg: RPCB(ar)",
	"reg: ATOMICINC(ar)",
	"reg: LOCALP(ar)",
	"reg: MTESTP(VREGP)",
	"reg: MTESTP(reg)",
	"reg: PREFETCHP(ar)",
	"reg: RTOUCH(ar)",
	"stmt: MASGNF(reg, reg)",
	"stmt: MASGND(reg, reg)",
	"stmt: MASGNC(reg, reg)",
	"stmt: MASGNS(reg, reg)",
	"stmt: MASGNI(reg, reg)",
	"stmt: MASGNP(reg, reg)",
	"stmt: MASGNB(reg, reg)",
	"reg: MULTIRPCF(ar)",
	"reg: MULTIRPCD(ar)",
	"reg: MULTIRPCC(ar)",
	"reg: MULTIRPCS(ar)",
	"reg: MULTIRPCI(ar)",
	"reg: MULTIRPCU(ar)",
	"reg: MULTIRPCP(ar)",
	"reg: MULTIRPCV(ar)",
	"reg: MULTIRPCB(ar)",
	"reg: MTOUCH(ar)",
	"reg: MULTIINIT(ar)",
	"reg: MULTIFUTUREF(ar)",
	"reg: MULTIFUTURED(ar)",
	"reg: MULTIFUTUREC(ar)",
	"reg: MULTIFUTURES(ar)",
	"reg: MULTIFUTUREI(ar)",
	"reg: MULTIFUTUREU(ar)",
	"reg: MULTIFUTUREP(ar)",
	"reg: MULTIFUTUREV(ar)",
	"reg: MULTIFUTUREB(ar)",
	"reg: RCALLF(ar)",
	"reg: RCALLD(ar)",
	"reg: RCALLC(ar)",
	"reg: RCALLS(ar)",
	"reg: RCALLI(ar)",
	"reg: RCALLU(ar)",
	"reg: RCALLP(ar)",
	"reg: RCALLV(ar)",
	"reg: RCALLB(ar)",
	"stmt: GRI(reg)",
	"stmt: GRU(reg)",
	"reg: ABORTONMISS(ar)",
	"reg: ENDABORTONMISS(ar)",
	"reg: SFUTUREF(ar)",
	"reg: SFUTURED(ar)",
	"reg: SFUTUREC(ar)",
	"reg: SFUTURES(ar)",
	"reg: SFUTUREI(ar)",
	"reg: SFUTUREU(ar)",
	"reg: SFUTUREP(ar)",
	"reg: SFUTUREV(ar)",
	"reg: SFUTUREB(ar)",
	"reg: SRPCF(ar)",
	"reg: SRPCD(ar)",
	"reg: SRPCC(ar)",
	"reg: SRPCS(ar)",
	"reg: SRPCI(ar)",
	"reg: SRPCU(ar)",
	"reg: SRPCP(ar)",
	"reg: SRPCV(ar)",
	"reg: SRPCB(ar)",
	"reg: STOUCH(ar)",
};
int sparc_max_rule = 260;
short sparc_cost[][4] = {
	{    0,    0,    0,    0}, /* 0 */
	{    0,    0,    0,    0}, /* 1 */
	{    0,    0,    0,    0}, /* 2 */
	{    0,    0,    0,    0}, /* 3 */
	{    0,    0,    0,    0}, /* 4 */
	{    0,    0,    0,    0}, /* 5 */
	{    0,    0,    0,    0}, /* 6 */
	{    0,    0,    0,    0}, /* 7 */
	{    0,    0,    0,    0}, /* 8 */
	{    0,    0,    0,    0}, /* 9 */
	{    0,    0,    0,    0}, /* 10 */
	{    1,    0,    0,    0}, /* 11 */
	{    1,    0,    0,    0}, /* 12 */
	{    1,    0,    0,    0}, /* 13 */
	{    1,    0,    0,    0}, /* 14 */
	{    2,    0,    0,    0}, /* 15 */
	{    2,    0,    0,    0}, /* 16 */
	{    2,    0,    0,    0}, /* 17 */
	{    1,    0,    0,    0}, /* 18 */
	{    1,    0,    0,    0}, /* 19 */
	{    1,    0,    0,    0}, /* 20 */
	{    1,    0,    0,    0}, /* 21 */
	{    1,    0,    0,    0}, /* 22 */
	{    1,    0,    0,    0}, /* 23 */
	{    1,    0,    0,    0}, /* 24 */
	{    1,    0,    0,    0}, /* 25 */
	{    1,    0,    0,    0}, /* 26 */
	{    1,    0,    0,    0}, /* 27 */
	{    1,    0,    0,    0}, /* 28 */
	{    1,    0,    0,    0}, /* 29 */
	{    1,    0,    0,    0}, /* 30 */
	{    1,    0,    0,    0}, /* 31 */
	{    1,    0,    0,    0}, /* 32 */
	{    1,    0,    0,    0}, /* 33 */
	{    1,    0,    0,    0}, /* 34 */
	{    1,    0,    0,    0}, /* 35 */
	{    1,    0,    0,    0}, /* 36 */
	{    1,    0,    0,    0}, /* 37 */
	{    0,    0,    0,    0}, /* 38 */
	{    2,    0,    0,    0}, /* 39 */
	{    2,    0,    0,    0}, /* 40 */
	{    1,    0,    0,    0}, /* 41 */
	{    1,    0,    0,    0}, /* 42 */
	{    0,    0,    0,    0}, /* 43 */
	{    1,    0,    0,    0}, /* 44 */
	{    0,    0,    0,    0}, /* 45 */
	{    0,    0,    0,    0}, /* 46 */
	{    0,    0,    0,    0}, /* 47 */
	{    0,    0,    0,    0}, /* 48 */
	{    0,    0,    0,    0}, /* 49 */
	{    0,    0,    0,    0}, /* 50 */
	{    0,    0,    0,    0}, /* 51 */
	{    0,    0,    0,    0}, /* 52 */
	{    0,    0,    0,    0}, /* 53 */
	{    0,    0,    0,    0}, /* 54 */
	{    0,    0,    0,    0}, /* 55 */
	{    0,    0,    0,    0}, /* 56 */
	{    0,    0,    0,    0}, /* 57 */
	{    1,    0,    0,    0}, /* 58 */
	{    1,    0,    0,    0}, /* 59 */
	{    1,    0,    0,    0}, /* 60 */
	{    1,    0,    0,    0}, /* 61 */
	{    1,    0,    0,    0}, /* 62 */
	{    1,    0,    0,    0}, /* 63 */
	{    1,    0,    0,    0}, /* 64 */
	{    1,    0,    0,    0}, /* 65 */
	{    1,    0,    0,    0}, /* 66 */
	{    1,    0,    0,    0}, /* 67 */
	{    1,    0,    0,    0}, /* 68 */
	{    1,    0,    0,    0}, /* 69 */
	{    1,    0,    0,    0}, /* 70 */
	{    1,    0,    0,    0}, /* 71 */
	{    1,    0,    0,    0}, /* 72 */
	{    1,    0,    0,    0}, /* 73 */
	{    1,    0,    0,    0}, /* 74 */
	{    1,    0,    0,    0}, /* 75 */
	{    1,    0,    0,    0}, /* 76 */
	{    1,    0,    0,    0}, /* 77 */
	{    1,    0,    0,    0}, /* 78 */
	{    1,    0,    0,    0}, /* 79 */
	{    1,    0,    0,    0}, /* 80 */
	{    1,    0,    0,    0}, /* 81 */
	{    1,    0,    0,    0}, /* 82 */
	{    1,    0,    0,    0}, /* 83 */
	{    1,    0,    0,    0}, /* 84 */
	{    1,    0,    0,    0}, /* 85 */
	{    1,    0,    0,    0}, /* 86 */
	{    1,    0,    0,    0}, /* 87 */
	{    1,    0,    0,    0}, /* 88 */
	{    1,    0,    0,    0}, /* 89 */
	{    1,    0,    0,    0}, /* 90 */
	{    0,    0,    0,    0}, /* 91 */
	{    1,    0,    0,    0}, /* 92 */
	{    1,    0,    0,    0}, /* 93 */
	{    1,    0,    0,    0}, /* 94 */
	{    1,    0,    0,    0}, /* 95 */
	{    1,    0,    0,    0}, /* 96 */
	{    1,    0,    0,    0}, /* 97 */
	{    0,    0,    0,    0}, /* 98 */
	{    0,    0,    0,    0}, /* 99 */
	{    0,    0,    0,    0}, /* 100 */
	{    0,    0,    0,    0}, /* 101 */
	{    0,    0,    0,    0}, /* 102 */
	{    0,    0,    0,    0}, /* 103 */
	{    1,    0,    0,    0}, /* 104 */
	{    1,    0,    0,    0}, /* 105 */
	{    1,    0,    0,    0}, /* 106 */
	{    1,    0,    0,    0}, /* 107 */
	{    1,    0,    0,    0}, /* 108 */
	{    1,    0,    0,    0}, /* 109 */
	{    1,    0,    0,    0}, /* 110 */
	{    1,    0,    0,    0}, /* 111 */
	{    1,    0,    0,    0}, /* 112 */
	{    1,    0,    0,    0}, /* 113 */
	{    1,    0,    0,    0}, /* 114 */
	{    1,    0,    0,    0}, /* 115 */
	{    1,    0,    0,    0}, /* 116 */
	{    1,    0,    0,    0}, /* 117 */
	{    1,    0,    0,    0}, /* 118 */
	{    1,    0,    0,    0}, /* 119 */
	{    1,    0,    0,    0}, /* 120 */
	{    1,    0,    0,    0}, /* 121 */
	{    0,    0,    0,    0}, /* 122 */
	{    0,    0,    0,    0}, /* 123 */
	{    0,    0,    0,    0}, /* 124 */
	{    0,    0,    0,    0}, /* 125 */
	{    0,    0,    0,    0}, /* 126 */
	{    0,    0,    0,    0}, /* 127 */
	{    1,    0,    0,    0}, /* 128 */
	{    1,    0,    0,    0}, /* 129 */
	{    1,    0,    0,    0}, /* 130 */
	{    1,    0,    0,    0}, /* 131 */
	{    1,    0,    0,    0}, /* 132 */
	{    1,    0,    0,    0}, /* 133 */
	{    1,    0,    0,    0}, /* 134 */
	{    1,    0,    0,    0}, /* 135 */
	{    1,    0,    0,    0}, /* 136 */
	{    1,    0,    0,    0}, /* 137 */
	{    1,    0,    0,    0}, /* 138 */
	{    1,    0,    0,    0}, /* 139 */
	{    1,    0,    0,    0}, /* 140 */
	{    1,    0,    0,    0}, /* 141 */
	{    1,    0,    0,    0}, /* 142 */
	{    1,    0,    0,    0}, /* 143 */
	{    1,    0,    0,    0}, /* 144 */
	{    1,    0,    0,    0}, /* 145 */
	{    1,    0,    0,    0}, /* 146 */
	{    1,    0,    0,    0}, /* 147 */
	{    1,    0,    0,    0}, /* 148 */
	{    1,    0,    0,    0}, /* 149 */
	{    1,    0,    0,    0}, /* 150 */
	{    1,    0,    0,    0}, /* 151 */
	{    1,    0,    0,    0}, /* 152 */
	{    1,    0,    0,    0}, /* 153 */
	{    1,    0,    0,    0}, /* 154 */
	{    1,    0,    0,    0}, /* 155 */
	{    1,    0,    0,    0}, /* 156 */
	{    1,    0,    0,    0}, /* 157 */
	{    1,    0,    0,    0}, /* 158 */
	{    1,    0,    0,    0}, /* 159 */
	{    1,    0,    0,    0}, /* 160 */
	{    1,    0,    0,    0}, /* 161 */
	{    1,    0,    0,    0}, /* 162 */
	{    1,    0,    0,    0}, /* 163 */
	{    1,    0,    0,    0}, /* 164 */
	{    1,    0,    0,    0}, /* 165 */
	{    1,    0,    0,    0}, /* 166 */
	{    1,    0,    0,    0}, /* 167 */
	{    1,    0,    0,    0}, /* 168 */
	{    1,    0,    0,    0}, /* 169 */
	{    1,    0,    0,    0}, /* 170 */
	{    1,    0,    0,    0}, /* 171 */
	{    1,    0,    0,    0}, /* 172 */
	{    1,    0,    0,    0}, /* 173 */
	{    1,    0,    0,    0}, /* 174 */
	{    1,    0,    0,    0}, /* 175 */
	{    1,    0,    0,    0}, /* 176 */
	{    1,    0,    0,    0}, /* 177 */
	{    1,    0,    0,    0}, /* 178 */
	{    1,    0,    0,    0}, /* 179 */
	{    1,    0,    0,    0}, /* 180 */
	{    1,    0,    0,    0}, /* 181 */
	{    1,    0,    0,    0}, /* 182 */
	{    1,    0,    0,    0}, /* 183 */
	{    1,    0,    0,    0}, /* 184 */
	{    1,    0,    0,    0}, /* 185 */
	{    1,    0,    0,    0}, /* 186 */
	{    1,    0,    0,    0}, /* 187 */
	{    1,    0,    0,    0}, /* 188 */
	{    1,    0,    0,    0}, /* 189 */
	{    1,    0,    0,    0}, /* 190 */
	{    1,    0,    0,    0}, /* 191 */
	{    1,    0,    0,    0}, /* 192 */
	{    1,    0,    0,    0}, /* 193 */
	{    1,    0,    0,    0}, /* 194 */
	{    1,    0,    0,    0}, /* 195 */
	{    2,    0,    0,    0}, /* 196 */
	{    1,    0,    0,    0}, /* 197 */
	{    1,    0,    0,    0}, /* 198 */
	{    1,    0,    0,    0}, /* 199 */
	{    1,    0,    0,    0}, /* 200 */
	{    1,    0,    0,    0}, /* 201 */
	{    1,    0,    0,    0}, /* 202 */
	{    1,    0,    0,    0}, /* 203 */
	{    1,    0,    0,    0}, /* 204 */
	{    1,    0,    0,    0}, /* 205 */
	{    1,    0,    0,    0}, /* 206 */
	{    1,    0,    0,    0}, /* 207 */
	{    1,    0,    0,    0}, /* 208 */
	{    1,    0,    0,    0}, /* 209 */
	{    1,    0,    0,    0}, /* 210 */
	{    1,    0,    0,    0}, /* 211 */
	{    1,    0,    0,    0}, /* 212 */
	{    1,    0,    0,    0}, /* 213 */
	{    1,    0,    0,    0}, /* 214 */
	{    1,    0,    0,    0}, /* 215 */
	{    1,    0,    0,    0}, /* 216 */
	{    1,    0,    0,    0}, /* 217 */
	{    1,    0,    0,    0}, /* 218 */
	{    1,    0,    0,    0}, /* 219 */
	{    1,    0,    0,    0}, /* 220 */
	{    1,    0,    0,    0}, /* 221 */
	{    1,    0,    0,    0}, /* 222 */
	{    1,    0,    0,    0}, /* 223 */
	{    1,    0,    0,    0}, /* 224 */
	{    1,    0,    0,    0}, /* 225 */
	{    1,    0,    0,    0}, /* 226 */
	{    1,    0,    0,    0}, /* 227 */
	{    1,    0,    0,    0}, /* 228 */
	{    1,    0,    0,    0}, /* 229 */
	{    1,    0,    0,    0}, /* 230 */
	{    1,    0,    0,    0}, /* 231 */
	{    1,    0,    0,    0}, /* 232 */
	{    1,    0,    0,    0}, /* 233 */
	{    1,    0,    0,    0}, /* 234 */
	{    1,    0,    0,    0}, /* 235 */
	{    1,    0,    0,    0}, /* 236 */
	{    1,    0,    0,    0}, /* 237 */
	{    1,    0,    0,    0}, /* 238 */
	{    1,    0,    0,    0}, /* 239 */
	{    1,    0,    0,    0}, /* 240 */
	{    1,    0,    0,    0}, /* 241 */
	{    1,    0,    0,    0}, /* 242 */
	{    1,    0,    0,    0}, /* 243 */
	{    1,    0,    0,    0}, /* 244 */
	{    1,    0,    0,    0}, /* 245 */
	{    1,    0,    0,    0}, /* 246 */
	{    1,    0,    0,    0}, /* 247 */
	{    1,    0,    0,    0}, /* 248 */
	{    1,    0,    0,    0}, /* 249 */
	{    1,    0,    0,    0}, /* 250 */
	{    1,    0,    0,    0}, /* 251 */
	{    1,    0,    0,    0}, /* 252 */
	{    1,    0,    0,    0}, /* 253 */
	{    1,    0,    0,    0}, /* 254 */
	{    1,    0,    0,    0}, /* 255 */
	{    1,    0,    0,    0}, /* 256 */
	{    1,    0,    0,    0}, /* 257 */
	{    1,    0,    0,    0}, /* 258 */
	{    1,    0,    0,    0}, /* 259 */
	{    1,    0,    0,    0}
};
char *sparc_ntname[] = {
	"Error: Nonterminals are > 0",
	"stmt",
	"acon",
	"addr",
	"ar",
	"rc",
	"reg",
	"con",
	0
};

short sparc_closure[8][8] = {
	{    0,    0,    0,    0,    0,    0,    0,    0,},
	{    0,    0,    0,    0,    0,    0,   45,   45,},
	{    0,    0,    0,    0,    0,    0,    0,    2,},
	{    0,    0,    0,    0,    0,    0,    6,    6,},
	{    0,    0,    7,    0,    0,    0,    8,    7,},
	{    0,    0,    0,    0,    0,    0,   10,    9,},
	{    0,    0,    0,    0,    0,    0,    0,   35,},
	{    0,    0,    0,    0,    0,    0,    0,    0,},
};

static struct rule rules[] = {
/*   0 */  { 0, "%"},
/*   1 */  { 0, "%a" },  /* acon: ADDRGP */
/*   2 */  { 0, "%a" },  /* acon: con */
/*   3 */  { 0, "%%%fp+%a" },  /* addr: ADDRFP */
/*   4 */  { 0, "%%%fp+%a" },  /* addr: ADDRLP */
/*   5 */  { 1, "# nop" },  /* NOP RULE */
/*   6 */  { 0, "%%%c" },  /* addr: reg */
/*   7 */  { 0, "%a" },  /* ar: acon */
/*   8 */  { 0, "%%%c" },  /* ar: reg */
/*   9 */  { 0, "%a" },  /* rc: con */
/*  10 */  { 0, "%%%c" },  /* rc: reg */
/*  11 */  { 1, "set %a,%%%c\n" },  /* reg: ADDRGP */
/*  12 */  { 1, "not %%%0,%%%c\n" },  /* reg: BCOMU(reg) */
/*  13 */  { 1, "xnor %%%0,%1,%%%c\n" },  /* reg: BXORU(reg,BCOMU(rc)) */
/*  14 */  { 1, "xor %%%0,%1,%%%c\n" },  /* reg: BXORU(reg,rc) */
/*  15 */  { 1, "#call %0; nop\n" },  /* reg: CALLD(ar) */
/*  16 */  { 1, "#call %0; nop\n" },  /* reg: CALLF(ar) */
/*  17 */  { 1, "#call %0; nop\n" },  /* reg: CALLI(ar) */
/*  18 */  { 1, "ldsb [%0],%%%c\n" },  /* reg: CVCI(INDIRC(addr)) */
/*  19 */  { 1, "sll %%%0,24,%%g1; sra %%g1,24,%%%c\n" },  /* reg: CVCI(reg) */
/*  20 */  { 1, "ldub [%0],%%%c\n" },  /* reg: CVCU(INDIRC(addr)) */
/*  21 */  { 1, "and %%%0,0xff,%%%c\n" },  /* reg: CVCU(reg) */
/*  22 */  { 1, "fdtos %%f%0,%%f%c\n" },  /* reg: CVDF(reg) */
/*  23 */  { 1, "fdtoi %%f%0,%%f0; st %%f0,[%%sp+68]; ld [%%sp+68],%%%c\n" },  /* reg: CVDI(reg) */
/*  24 */  { 1, "fstod %%f%0,%%f%c\n" },  /* reg: CVFD(reg) */
/*  25 */  { 1, "st %%%0,[%%sp+68]; ld [%%sp+68],%%f%c; fitod %%f%c,%%f%c\n" },  /* reg: CVID(reg) */
/*  26 */  { 1, "ldsh [%0],%%%c\n" },  /* reg: CVSI(INDIRS(addr)) */
/*  27 */  { 1, "sll %%%0,16,%%g1; sra %%g1,16,%%%c\n" },  /* reg: CVSI(reg) */
/*  28 */  { 1, "lduh [%0],%%%c\n" },  /* reg: CVSU(INDIRS(addr)) */
/*  29 */  { 1, "set 0xffff,%%g1; and %%%0,%%g1,%%%c\n" },  /* reg: CVSU(reg) */
/*  30 */  { 1, "# LOADD\n" },  /* reg: LOADD(reg) */
/*  31 */  { 1, "fmovs %%f%0,%%f%c\n" },  /* reg: LOADF(reg) */
/*  32 */  { 1, "# NEGD\n" },  /* reg: NEGD(reg) */
/*  33 */  { 1, "fnegs %%f%0,%%f%c\n" },  /* reg: NEGF(reg) */
/*  34 */  { 1, "neg %%%0,%%%c\n" },  /* reg: NEGI(reg) */
/*  35 */  { 1, "set %0,%%%c\n" },  /* reg: con */
/*  36 */  { 1, "# ARGD\n" },  /* stmt: ARGD(reg) */
/*  37 */  { 1, "# ARGF\n" },  /* stmt: ARGF(reg) */
/*  38 */  { 1, "# ASGNB\n" },  /* stmt: ASGNB(reg,reg) */
/*  39 */  { 1, "#call %0; st %%%1,[%%sp+64]\n" },  /* stmt: CALLB(ar,reg) */
/*  40 */  { 1, "#call %0; nop\n" },  /* stmt: CALLV(ar) */
/*  41 */  { 1, "ba %0; nop\n" },  /* stmt: JUMPV(acon) */
/*  42 */  { 1, "jmpl %%%0,%%g0; nop\n" },  /* stmt: JUMPV(reg) */
/*  43 */  { 1, "%a:\n" },  /* stmt: LABELV */
/*  44 */  { 1, "# ret\n" },  /* stmt: RETV */
/*  45 */  { 0, "" },  /* stmt: reg */
/*  46 */  { 0, "%%%0+%1" },  /* addr: ADDI(reg,rc) */
/*  47 */  { 0, "%%%0+%1" },  /* addr: ADDP(reg,rc) */
/*  48 */  { 0, "%%%0+%1" },  /* addr: ADDU(reg,rc) */
/*  49 */  { 0, "%a" },  /* con: CNSTI */
/*  50 */  { 0, "%a" },  /* con: CNSTP */
/*  51 */  { 0, "%a" },  /* con: CNSTU */
/*  52 */  { 0, "%a" },  /* con: CNSTC */
/*  53 */  { 0, "%a" },  /* con: CNSTS */
/*  54 */  { 0, "%a" },  /* con: I0I */
/*  55 */  { 0, "%a" },  /* con: I1I */
/*  56 */  { 0, "%a" },  /* con: I2I */
/*  57 */  { 0, "%a" },  /* con: I3I */
/*  58 */  { 1, "fadds %%f%0,%%f%1,%%f%c\n" },  /* reg: ADDF(reg,reg) */
/*  59 */  { 1, "faddd %%f%0,%%f%1,%%f%c\n" },  /* reg: ADDD(reg,reg) */
/*  60 */  { 1, "fsubs %%f%0,%%f%1,%%f%c\n" },  /* reg: SUBF(reg,reg) */
/*  61 */  { 1, "fsubd %%f%0,%%f%1,%%f%c\n" },  /* reg: SUBD(reg,reg) */
/*  62 */  { 1, "fmuls %%f%0,%%f%1,%%f%c\n" },  /* reg: MULF(reg,reg) */
/*  63 */  { 1, "fmuld %%f%0,%%f%1,%%f%c\n" },  /* reg: MULD(reg,reg) */
/*  64 */  { 1, "fdivs %%f%0,%%f%1,%%f%c\n" },  /* reg: DIVF(reg,reg) */
/*  65 */  { 1, "fdivd %%f%0,%%f%1,%%f%c\n" },  /* reg: DIVD(reg,reg) */
/*  66 */  { 1, "andn %%%0,%1,%%%c\n" },  /* reg: BANDU(reg,BCOMU(rc)) */
/*  67 */  { 1, "orn %%%0,%1,%%%c\n" },  /* reg: BORU(reg,BCOMU(rc)) */
/*  68 */  { 1, "and %%%0,%1,%%%c\n" },  /* reg: BANDU(reg,rc) */
/*  69 */  { 1, "or %%%0,%1,%%%c\n" },  /* reg: BORU(reg,rc) */
/*  70 */  { 1, "mov %%%0,%%%c\n" },  /* reg: CVIC(reg) */
/*  71 */  { 1, "mov %%%0,%%%c\n" },  /* reg: CVIS(reg) */
/*  72 */  { 1, "mov %%%0,%%%c\n" },  /* reg: CVIU(reg) */
/*  73 */  { 1, "mov %%%0,%%%c\n" },  /* reg: CVUC(reg) */
/*  74 */  { 1, "mov %%%0,%%%c\n" },  /* reg: CVUS(reg) */
/*  75 */  { 1, "mov %%%0,%%%c\n" },  /* reg: CVUI(reg) */
/*  76 */  { 1, "mov %%%0,%%%c\n" },  /* reg: CVPU(reg) */
/*  77 */  { 1, "mov %%%0,%%%c\n" },  /* reg: CVUP(reg) */
/*  78 */  { 1, "mov %%%0,%%%c\n" },  /* reg: INDIRB(reg) */
/*  79 */  { 1, "mov %%%0,%%%c\n" },  /* reg: LOADC(reg) */
/*  80 */  { 1, "mov %%%0,%%%c\n" },  /* reg: LOADS(reg) */
/*  81 */  { 1, "mov %%%0,%%%c\n" },  /* reg: LOADI(reg) */
/*  82 */  { 1, "mov %%%0,%%%c\n" },  /* reg: LOADP(reg) */
/*  83 */  { 1, "mov %%%0,%%%c\n" },  /* reg: LOADU(reg) */
/*  84 */  { 1, "mov %%%0,%%%c\n" },  /* reg: LOADB(reg) */
/*  85 */  { 1, "mov %%%1,%%o1; call .div,2; mov %%%0,%%o0\n" },  /* reg: DIVI(reg,reg) */
/*  86 */  { 1, "mov %%%1,%%o1; call .udiv,2; mov %%%0,%%o0\n" },  /* reg: DIVU(reg,reg) */
/*  87 */  { 1, "mov %%%1,%%o1; call .rem,2; mov %%%0,%%o0\n" },  /* reg: MODI(reg,reg) */
/*  88 */  { 1, "mov %%%1,%%o1; call .urem,2; mov %%%0,%%o0\n" },  /* reg: MODU(reg,reg) */
/*  89 */  { 1, "add %%sp,-32,%%sp; mov %%%1,%%o1; call .mul,2; mov %%%0,%%o0; add %%sp,32,%%sp\n" },  /* reg: MULI(reg,reg) */
/*  90 */  { 1, "add %%sp,-32,%%sp; mov %%%1,%%o1; call .umul,2; mov %%%0,%%o0; add %%sp,32,%%sp\n" },  /* reg: MULU(reg,reg) */
/*  91 */  { 1, "# reg\n" },  /* reg: I0I */
/*  92 */  { 1, "ld [%0],%%f%c\n" },  /* reg: INDIRF(addr) */
/*  93 */  { 1, "#INDIRD(addr)\n" },  /* reg: INDIRD(addr) */
/*  94 */  { 1, "ld [%0],%%%c\n" },  /* reg: INDIRI(addr) */
/*  95 */  { 1, "ld [%0],%%%c\n" },  /* reg: INDIRP(addr) */
/*  96 */  { 1, "ldsb [%0],%%%c\n" },  /* reg: INDIRC(addr) */
/*  97 */  { 1, "ldsh [%0],%%%c\n" },  /* reg: INDIRS(addr) */
/*  98 */  { 1, "#INDIR VREG" },  /* reg: INDIRF(VREGP) */
/*  99 */  { 1, "#INDIR VREG" },  /* reg: INDIRD(VREGP) */
/* 100 */  { 1, "#INDIR VREG" },  /* reg: INDIRI(VREGP) */
/* 101 */  { 1, "#INDIR VREG" },  /* reg: INDIRP(VREGP) */
/* 102 */  { 1, "#INDIR VREG" },  /* reg: INDIRC(VREGP) */
/* 103 */  { 1, "#INDIR VREG" },  /* reg: INDIRS(VREGP) */
/* 104 */  { 1, "cmp %%%0,%1; be %a; nop\n" },  /* stmt: EQI(reg,rc) */
/* 105 */  { 1, "cmp %%%0,%1; bne %a; nop\n" },  /* stmt: NEI(reg,rc) */
/* 106 */  { 1, "cmp %%%0,%1; bg %a; nop\n" },  /* stmt: GTI(reg,rc) */
/* 107 */  { 1, "cmp %%%0,%1; bge %a; nop\n" },  /* stmt: GEI(reg,rc) */
/* 108 */  { 1, "cmp %%%0,%1; bl %a; nop\n" },  /* stmt: LTI(reg,rc) */
/* 109 */  { 1, "cmp %%%0,%1; ble %a; nop\n" },  /* stmt: LEI(reg,rc) */
/* 110 */  { 1, "cmp %%%0,%1; bgu %a; nop\n" },  /* stmt: GTU(reg,rc) */
/* 111 */  { 1, "cmp %%%0,%1; bgeu %a; nop\n" },  /* stmt: GEU(reg,rc) */
/* 112 */  { 1, "cmp %%%0,%1; blu %a; nop\n" },  /* stmt: LTU(reg,rc) */
/* 113 */  { 1, "cmp %%%0,%1; bleu %a; nop\n" },  /* stmt: LEU(reg,rc) */
/* 114 */  { 1, "st %%%0,[%%sp+4*%c+68]\n" },  /* stmt: ARGI(reg) */
/* 115 */  { 1, "st %%%0,[%%sp+4*%c+68]\n" },  /* stmt: ARGP(reg) */
/* 116 */  { 1, "st %%f%1,[%0]\n" },  /* stmt: ASGNF(addr,reg) */
/* 117 */  { 1, "#ASGND(addr,reg)\n" },  /* stmt: ASGND(addr,reg) */
/* 118 */  { 1, "st %%%1,[%0]\n" },  /* stmt: ASGNI(addr,reg) */
/* 119 */  { 1, "st %%%1,[%0]\n" },  /* stmt: ASGNP(addr,reg) */
/* 120 */  { 1, "stb %%%1,[%0]\n" },  /* stmt: ASGNC(addr,reg) */
/* 121 */  { 1, "sth %%%1,[%0]\n" },  /* stmt: ASGNS(addr,reg) */
/* 122 */  { 1, "# nop\n" },  /* stmt: ASGNF(VREGP,reg) */
/* 123 */  { 1, "# nop\n" },  /* stmt: ASGND(VREGP,reg) */
/* 124 */  { 1, "# nop\n" },  /* stmt: ASGNI(VREGP,reg) */
/* 125 */  { 1, "# nop\n" },  /* stmt: ASGNP(VREGP,reg) */
/* 126 */  { 1, "# nop\n" },  /* stmt: ASGNC(VREGP,reg) */
/* 127 */  { 1, "# nop\n" },  /* stmt: ASGNS(VREGP,reg) */
/* 128 */  { 1, "# ret\n" },  /* stmt: RETF(reg) */
/* 129 */  { 1, "# ret\n" },  /* stmt: RETD(reg) */
/* 130 */  { 1, "# ret\n" },  /* stmt: RETI(reg) */
/* 131 */  { 1, "add %%%0,%1,%%%c\n" },  /* reg: ADDI(reg,rc) */
/* 132 */  { 1, "#add %%%0,%1,%%%c\n" },  /* reg: ADDP(reg,rc) */
/* 133 */  { 1, "add %%%0,%1,%%%c\n" },  /* reg: ADDU(reg,rc) */
/* 134 */  { 1, "sub %%%0,%1,%%%c\n" },  /* reg: SUBI(reg,rc) */
/* 135 */  { 1, "sub %%%0,%1,%%%c\n" },  /* reg: SUBP(reg,rc) */
/* 136 */  { 1, "sub %%%0,%1,%%%c\n" },  /* reg: SUBU(reg,rc) */
/* 137 */  { 1, "sll %%%0,%1,%%%c\n" },  /* reg: LSHI(reg,rc) */
/* 138 */  { 1, "sll %%%0,%1,%%%c\n" },  /* reg: LSHU(reg,rc) */
/* 139 */  { 1, "srl %%%0,%1,%%%c\n" },  /* reg: RSHU(reg,rc) */
/* 140 */  { 1, "sra %%%0,%1,%%%c\n" },  /* reg: RSHI(reg,rc) */
/* 141 */  { 1, "# addrlp\n" }, /* reg: ADDRLP */
/* 142 */  { 1, "# ltf\n"}, /* stmt: LTF(reg,rc) */
/* 143 */  { 1, "# ltd\n"}, /* stmt: LTD(reg,rc) */
/* 144 */  { 1, "# lef\n"}, /* stmt: LEF(reg,rc) */
/* 145 */  { 1, "# led\n"}, /* stmt: LED(reg,rc) */
/* 146 */  { 1, "# gtf\n"}, /* stmt: GTF(reg,rc) */
/* 147 */  { 1, "# gtd\n"}, /* stmt: GTD(reg,rc) */
/* 148 */  { 1, "# gef\n"}, /* stmt: GEF(reg,rc) */
/* 149 */  { 1, "# ged\n"}, /* stmt: GED(reg,rc) */
/* 150 */  { 1, "# eqf\n"}, /* stmt: EQF(reg,rc) */
/* 151 */  { 1, "# eqd\n"}, /* stmt: EQD(reg,rc) */
/* 152 */  { 1, "# nef\n"}, /* stmt: NEF(reg,rc) */
/* 153 */  { 1, "# ned\n"}, /* stmt: NED(reg,rc) */
/* 154 */  { 1, "set %a,%%%c\n"}, /* reg: LGCNSTI */
/* 155 */  { 1, "# TESTP\n"}, /* reg: TESTP(VREGP) */
/* 156 */  { 1, "# TESTP\n"}, /* reg: TESTP(reg) */
/* 157 */  { 1, "# ADDRFP\n"}, /* reg: ADDRFP */
/* 158 */  { 1, "# ARGB\n"}, /* reg: ARGB */
/* 159 */  { 1, "add %%sp,-%a,%%sp\n"}, /* stmt: ALLOCEXT */
/* 160 */  { 1, "# GRS"}, /* stmt: GRS */
/* 161 */  { 1, "# FUTURE\n"}, /* reg:FUTURE(ar) */
/* 162 */  { 1, "# FUTURE\n"}, /* reg:FUTURE(ar) */
/* 163 */  { 1, "# FUTURE\n"}, /* reg:FUTURE(ar) */
/* 164 */  { 1, "# FUTURE\n"}, /* reg:FUTURE(ar) */
/* 165 */  { 1, "# FUTURE\n"}, /* reg:FUTURE(ar) */
/* 166 */  { 1, "# FUTURE\n"}, /* reg:FUTURE(ar) */
/* 167 */  { 1, "# FUTURE\n"}, /* reg:FUTURE(ar) */
/* 168 */  { 1, "# FUTURE\n"}, /* reg:FUTURE(ar) */
/* 169 */  { 1, "# FUTURE\n"}, /* reg:FUTURE(ar) */
/* 170 */  { 1, "# NOTEST\n"}, /* reg:NOTEST(ar) */
/* 171 */  { 1, "# RETEST\n"}, /* reg:RETEST(ar) */
/* 172 */  { 1, "# TOUCHI\n"}, /* reg:TOUCHI(ar) */
/* 173 */  { 1, "# MIGRATEV\n"}, /* reg:MIGRATEV(ar) */
/* 174 */  { 1, "# NONLOCAL\n"}, /* reg:NONLOCAL */
/* 175 */  { 1, "# ISLOCPTR\n"}, /* reg:ISLOCPTR */
/* 176 */  { 1, "# RESTORE\n"}, /* reg:RESTORE */
/* 177 */  { 1, "# BIGLP\n"}, /* reg:BIGLP */
/* 178 */  { 1, "# MERGEPH\n"}, /* reg:MERGEPH */
/* 179 */  { 1, "# UNPHASE\n"}, /* reg:UNPHASE */
/* 180 */  { 1, "# MIGRPH\n"}, /* reg:MIGRPH */
/* 181 */  { 1, "# CASGNF\n"}, /* stmt:CASGNF */
/* 182 */  { 1, "# CASGND\n"}, /* stmt:CASGND */
/* 183 */  { 1, "# CASGNC\n"}, /* stmt:CASGNC */
/* 184 */  { 1, "# CASGNS\n"}, /* stmt:CASGNS */
/* 185 */  { 1, "# CASGNI\n"}, /* stmt:CASGNI */
/* 186 */  { 1, "# CASGNP\n"}, /* stmt:CASGNP */
/* 187 */  { 1, "# RPC\n"}, /* reg:RPC(ar) */
/* 188 */  { 1, "# RPC\n"}, /* reg:RPC(ar) */
/* 189 */  { 1, "# RPC\n"}, /* reg:RPC(ar) */
/* 190 */  { 1, "# RPC\n"}, /* reg:RPC(ar) */
/* 191 */  { 1, "# RPC\n"}, /* reg:RPC(ar) */
/* 192 */  { 1, "# RPC\n"}, /* reg:RPC(ar) */
/* 193 */  { 1, "# RPC\n"}, /* reg:RPC(ar) */
/* 194 */  { 1, "# RPC\n"}, /* reg:RPC(ar) */
/* 195 */  { 1, "# RPC\n"}, /* reg:RPC(ar) */
/* 196 */  { 1, "# ATOMICINC\n" },  /* reg: ATOMICINC(ar) */
/* 197 */  { 1, "# LOCALP\n" }, /* reg:LOCALP(ar) */
/* 198 */  { 1, "# MTESTP\n"}, /* reg: MTESTP(VREGP) */
/* 199 */  { 1, "# MTESTP\n"}, /* reg: MTESTP(reg) */
/* 200 */  { 1, "# PREFETCHP\n" }, /* reg:PREFETCHP(ar) */
/* 201 */  { 1, "# RTOUCH\n"}, /* reg:RTOUCH(ar) */
/* 202 */  { 1, "# MASGNF\n"}, /* stmt:CASGNF */
/* 203 */  { 1, "# MASGND\n"}, /* stmt:CASGND */
/* 204 */  { 1, "# MASGNC\n"}, /* stmt:CASGNC */
/* 205 */  { 1, "# MASGNS\n"}, /* stmt:CASGNS */
/* 206 */  { 1, "# MASGNI\n"}, /* stmt:CASGNI */
/* 207 */  { 1, "# MASGNP\n"}, /* stmt:CASGNP */
/* 208 */  { 1, "# MASGNB\n"}, /* stmt:CASGNB */
/* 209 */  { 1, "# MULTIRPC\n"}, /* reg:MULTIRPC(ar) */
/* 210 */  { 1, "# MULTIRPC\n"}, /* reg:MULTIRPC(ar) */
/* 211 */  { 1, "# MULTIRPC\n"}, /* reg:MULTIRPC(ar) */
/* 212 */  { 1, "# MULTIRPC\n"}, /* reg:MULTIRPC(ar) */
/* 213 */  { 1, "# MULTIRPC\n"}, /* reg:MULTIRPC(ar) */
/* 214 */  { 1, "# MULTIRPC\n"}, /* reg:MULTIRPC(ar) */
/* 215 */  { 1, "# MULTIRPC\n"}, /* reg:MULTIRPC(ar) */
/* 216 */  { 1, "# MULTIRPC\n"}, /* reg:MULTIRPC(ar) */
/* 217 */  { 1, "# MULTIRPC\n"}, /* reg:MULTIRPC(ar) */
/* 218 */  { 1, "# MTOUCH\n"}, /* reg:MTOUCH(ar) */
/* 219 */  { 1, "# MULTIINIT\n"}, /* reg:MULTIINIT(ar) */
/* 220 */  { 1, "# MULTIFUTURE\n"}, /* reg:MULTIFUTURE(ar) */
/* 221 */  { 1, "# MULTIFUTURE\n"}, /* reg:MULTIFUTURE(ar) */
/* 222 */  { 1, "# MULTIFUTURE\n"}, /* reg:MULTIFUTURE(ar) */
/* 223 */  { 1, "# MULTIFUTURE\n"}, /* reg:MULTIFUTURE(ar) */
/* 224 */  { 1, "# MULTIFUTURE\n"}, /* reg:MULTIFUTURE(ar) */
/* 225 */  { 1, "# MULTIFUTURE\n"}, /* reg:MULTIFUTURE(ar) */
/* 226 */  { 1, "# MULTIFUTURE\n"}, /* reg:MULTIFUTURE(ar) */
/* 227 */  { 1, "# MULTIFUTURE\n"}, /* reg:MULTIFUTURE(ar) */
/* 228 */  { 1, "# MULTIFUTURE\n"}, /* reg:MULTIFUTURE(ar) */
/* 229 */  { 1, "# MULTIFUTURE\n"}, /* reg:MULTIFUTURE(ar) */
/* 230 */  { 1, "# RCALL\n"}, /* reg:RCALL(ar) */
/* 231 */  { 1, "# RCALL\n"}, /* reg:RCALL(ar) */
/* 232 */  { 1, "# RCALL\n"}, /* reg:RCALL(ar) */
/* 233 */  { 1, "# RCALL\n"}, /* reg:RCALL(ar) */
/* 234 */  { 1, "# RCALL\n"}, /* reg:RCALL(ar) */
/* 235 */  { 1, "# RCALL\n"}, /* reg:RCALL(ar) */
/* 236 */  { 1, "# RCALL\n"}, /* reg:RCALL(ar) */
/* 237 */  { 1, "# RCALL\n"}, /* reg:RCALL(ar) */
/* 238 */  { 1, "# GRI\n"}, /* stmt:GRI(reg) */
/* 239 */  { 1, "# GRU\n"}, /* stmt:GRU(reg) */
/* 240 */  { 1, "# ABORTONMISS\n"}, /* reg:ABORTONMISS */
/* 241 */  { 1, "# ENDABORTONMISS\n"}, /* reg:ENDABORTONMISS */
/* 242 */  { 1, "# SFUTURE\n"}, /* reg:SFUTURE(ar) */
/* 243 */  { 1, "# SFUTURE\n"}, /* reg:SFUTURE(ar) */
/* 244 */  { 1, "# SFUTURE\n"}, /* reg:SFUTURE(ar) */
/* 245 */  { 1, "# SFUTURE\n"}, /* reg:SFUTURE(ar) */
/* 246 */  { 1, "# SFUTURE\n"}, /* reg:SFUTURE(ar) */
/* 247 */  { 1, "# SFUTURE\n"}, /* reg:SFUTURE(ar) */
/* 248 */  { 1, "# SFUTURE\n"}, /* reg:SFUTURE(ar) */
/* 249 */  { 1, "# SFUTURE\n"}, /* reg:SFUTURE(ar) */
/* 250 */  { 1, "# SFUTURE\n"}, /* reg:SFUTURE(ar) */
/* 251 */  { 1, "# SRPC\n"}, /* reg:SRPC(ar) */
/* 252 */  { 1, "# SRPC\n"}, /* reg:SRPC(ar) */
/* 253 */  { 1, "# SRPC\n"}, /* reg:SRPC(ar) */
/* 254 */  { 1, "# SRPC\n"}, /* reg:SRPC(ar) */
/* 255 */  { 1, "# SRPC\n"}, /* reg:SRPC(ar) */
/* 256 */  { 1, "# SRPC\n"}, /* reg:SRPC(ar) */
/* 257 */  { 1, "# SRPC\n"}, /* reg:SRPC(ar) */
/* 258 */  { 1, "# SRPC\n"}, /* reg:SRPC(ar) */
/* 259 */  { 1, "# SRPC\n"}, /* reg:SRPC(ar) */
/* 260 */  { 1, "# STOUCH\n"}, /* reg:STOUCH(ar) */
};

#include "pseudos.c"
#include "target.c"
