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
static const char *ng0 = "C:/Users/Kacper/Desktop/Football/Displayer.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
int ieee_p_1242562249_sub_2271993008_1035706684(char *, char *, char *);


static void work_a_0806393646_3212880686_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    unsigned int t11;

LAB0:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 12244);
    t3 = (t0 + 8120);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 64U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 8120);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_delta(t1, 13U, 3U, 0LL);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 8120);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_delta(t1, 21U, 3U, 0LL);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 12052U);
    t8 = ieee_p_1242562249_sub_2271993008_1035706684(IEEE_P_1242562249, t2, t1);
    t3 = (t0 + 3888U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    *((int *)t3) = t8;
    t5 = (t0 + 3832U);
    xsi_variable_act(t5);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t9 = xsi_vhdl_mod(t8, 60);
    t1 = (t0 + 4008U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = t9;
    t4 = (t0 + 3952U);
    xsi_variable_act(t4);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t9 = (t8 / 60);
    t1 = (t0 + 4128U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = t9;
    t4 = (t0 + 4072U);
    xsi_variable_act(t4);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t9 = (t8 / 10);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, t9, 4);
    t3 = (t0 + 4248U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    t5 = (t10 + 12U);
    t11 = *((unsigned int *)t5);
    t11 = (t11 * 1U);
    memcpy(t3, t1, t11);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t9 = xsi_vhdl_mod(t8, 10);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, t9, 4);
    t3 = (t0 + 4368U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    t5 = (t10 + 12U);
    t11 = *((unsigned int *)t5);
    t11 = (t11 * 1U);
    memcpy(t3, t1, t11);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, t8, 4);
    t3 = (t0 + 4488U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    t5 = (t10 + 12U);
    t11 = *((unsigned int *)t5);
    t11 = (t11 * 1U);
    memcpy(t3, t1, t11);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 4488U);
    t2 = *((char **)t1);
    t1 = (t0 + 8120);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_delta(t1, 48U, 4U, 0LL);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 4248U);
    t2 = *((char **)t1);
    t1 = (t0 + 8120);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_delta(t1, 56U, 4U, 0LL);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 4368U);
    t2 = *((char **)t1);
    t1 = (t0 + 8120);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_delta(t1, 60U, 4U, 0LL);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 12308);
    t3 = (t0 + 8184);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_fast_port(t3);
    t1 = (t0 + 8024);
    *((int *)t1) = 1;

LAB1:    return;
}

static void work_a_0806393646_3212880686_p_1(char *t0)
{
    char *t1;

LAB0:    t1 = (t0 + 8040);
    *((int *)t1) = 1;

LAB1:    return;
}

static void work_a_0806393646_3212880686_p_2(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(95, ng0);

LAB3:    t1 = (t0 + 12324);
    t3 = (t0 + 8248);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0806393646_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(96, ng0);

LAB3:    t1 = (t0 + 8312);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0806393646_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(97, ng0);

LAB3:    t1 = (t0 + 8376);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0806393646_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(98, ng0);

LAB3:    t1 = (t0 + 8440);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0806393646_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(99, ng0);

LAB3:    t1 = (t0 + 8504);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0806393646_3212880686_p_7(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(100, ng0);

LAB3:    t1 = (t0 + 8568);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0806393646_3212880686_p_8(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(101, ng0);

LAB3:    t1 = (t0 + 8632);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0806393646_3212880686_p_9(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(102, ng0);

LAB3:    t1 = (t0 + 8696);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0806393646_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0806393646_3212880686_p_0,(void *)work_a_0806393646_3212880686_p_1,(void *)work_a_0806393646_3212880686_p_2,(void *)work_a_0806393646_3212880686_p_3,(void *)work_a_0806393646_3212880686_p_4,(void *)work_a_0806393646_3212880686_p_5,(void *)work_a_0806393646_3212880686_p_6,(void *)work_a_0806393646_3212880686_p_7,(void *)work_a_0806393646_3212880686_p_8,(void *)work_a_0806393646_3212880686_p_9};
	xsi_register_didat("work_a_0806393646_3212880686", "isim/DisplayerTestBench_isim_beh.exe.sim/work/a_0806393646_3212880686.didat");
	xsi_register_executes(pe);
}
