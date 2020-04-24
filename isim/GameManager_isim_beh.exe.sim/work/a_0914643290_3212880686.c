/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/KM/Desktop/UCISW_Football/GameManager.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0914643290_3212880686_p_0(char *t0)
{
    char t20[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    unsigned char t10;
    int t11;
    unsigned char t12;
    int t13;
    char *t14;
    int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)0);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t4 = (t6 == 0);
    if (t4 == 1)
        goto LAB8;

LAB9:    t1 = (t0 + 3768U);
    t5 = *((char **)t1);
    t7 = *((int *)t5);
    t1 = (t0 + 3528U);
    t8 = *((char **)t1);
    t11 = *((int *)t8);
    t12 = (t7 == t11);
    if (t12 == 1)
        goto LAB11;

LAB12:    t1 = (t0 + 3888U);
    t9 = *((char **)t1);
    t13 = *((int *)t9);
    t1 = (t0 + 3528U);
    t14 = *((char **)t1);
    t15 = *((int *)t14);
    t16 = (t13 == t15);
    t10 = t16;

LAB13:    t3 = t10;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 9182);
    t5 = (t0 + 5896);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t14 = (t9 + 56U);
    t17 = *((char **)t14);
    memcpy(t17, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);

LAB6:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 1472U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB22;

LAB23:    t3 = (unsigned char)0;

LAB24:    if (t3 != 0)
        goto LAB19;

LAB21:
LAB20:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t20, t6, 8);
    t5 = (t0 + 5960);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t14 = (t9 + 56U);
    t17 = *((char **)t14);
    memcpy(t17, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    t1 = (t0 + 5800);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 4008U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t7 = (t6 - 1);
    t1 = (t0 + 4008U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((int *)t1) = t7;
    t9 = (t0 + 3952U);
    xsi_variable_act(t9);
    goto LAB3;

LAB5:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 4128U);
    t17 = *((char **)t1);
    t1 = (t17 + 0);
    *((unsigned char *)t1) = (unsigned char)1;
    t18 = (t0 + 4072U);
    xsi_variable_act(t18);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 3768U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t1 = (t0 + 3888U);
    t5 = *((char **)t1);
    t7 = *((int *)t5);
    t3 = (t6 > t7);
    if (t3 != 0)
        goto LAB14;

LAB16:    t1 = (t0 + 3768U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t1 = (t0 + 3888U);
    t5 = *((char **)t1);
    t7 = *((int *)t5);
    t3 = (t6 < t7);
    if (t3 != 0)
        goto LAB17;

LAB18:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 9180);
    t5 = (t0 + 5896);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t14 = (t9 + 56U);
    t17 = *((char **)t14);
    memcpy(t17, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);

LAB15:    goto LAB6;

LAB8:    t3 = (unsigned char)1;
    goto LAB10;

LAB11:    t10 = (unsigned char)1;
    goto LAB13;

LAB14:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 9176);
    t9 = (t0 + 5896);
    t14 = (t9 + 56U);
    t17 = *((char **)t14);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t1, 2U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB15;

LAB17:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 9178);
    t9 = (t0 + 5896);
    t14 = (t9 + 56U);
    t17 = *((char **)t14);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t1, 2U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB15;

LAB19:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3648U);
    t8 = *((char **)t2);
    t6 = *((int *)t8);
    t2 = (t0 + 4008U);
    t9 = *((char **)t2);
    t2 = (t9 + 0);
    *((int *)t2) = t6;
    t14 = (t0 + 3952U);
    xsi_variable_act(t14);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    t5 = (t0 + 4072U);
    xsi_variable_act(t5);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 3768U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    t5 = (t0 + 3712U);
    xsi_variable_act(t5);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    t5 = (t0 + 3832U);
    xsi_variable_act(t5);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 9184);
    t5 = (t0 + 5896);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t14 = (t9 + 56U);
    t17 = *((char **)t14);
    memcpy(t17, t1, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB20;

LAB22:    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t10 = *((unsigned char *)t5);
    t12 = (t10 == (unsigned char)3);
    t3 = t12;
    goto LAB24;

}

static void work_a_0914643290_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    int t8;
    unsigned char t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5816);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(104, ng0);
    t3 = (t0 + 4248U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 + 1);
    t3 = (t0 + 4248U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    *((int *)t3) = t6;
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 4248U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t1 = (t0 + 3408U);
    t4 = *((char **)t1);
    t6 = *((int *)t4);
    t8 = (t6 * 2);
    t2 = (t5 > t8);
    if (t2 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 4248U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t9 = (!(t2));
    t1 = (t0 + 6024);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t9;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}


extern void work_a_0914643290_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0914643290_3212880686_p_0,(void *)work_a_0914643290_3212880686_p_1};
	xsi_register_didat("work_a_0914643290_3212880686", "isim/GameManager_isim_beh.exe.sim/work/a_0914643290_3212880686.didat");
	xsi_register_executes(pe);
}
