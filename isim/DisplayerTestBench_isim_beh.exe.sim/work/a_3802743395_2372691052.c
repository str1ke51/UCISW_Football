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
static const char *ng0 = "C:/Users/Kacper/Desktop/Football/DisplayerTestBench.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_2931903318_1035706684(char *, char *, char *, char *, int );


static void work_a_3802743395_2372691052_p_0(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int64 t11;

LAB0:    t1 = (t0 + 4752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 8340U);
    t5 = ieee_p_1242562249_sub_2931903318_1035706684(IEEE_P_1242562249, t3, t4, t2, 1);
    t6 = (t0 + 5384);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t5, 3U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(114, ng0);
    t11 = (100 * 1000LL);
    t2 = (t0 + 4560);
    xsi_process_wait(t2, t11);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}

static void work_a_3802743395_2372691052_p_1(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int64 t11;

LAB0:    t1 = (t0 + 5000U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 8388U);
    t5 = ieee_p_1242562249_sub_2931903318_1035706684(IEEE_P_1242562249, t3, t4, t2, 1);
    t6 = (t0 + 5448);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t5, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(120, ng0);
    t11 = (10 * 1000LL);
    t2 = (t0 + 4808);
    xsi_process_wait(t2, t11);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}


extern void work_a_3802743395_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3802743395_2372691052_p_0,(void *)work_a_3802743395_2372691052_p_1};
	xsi_register_didat("work_a_3802743395_2372691052", "isim/DisplayerTestBench_isim_beh.exe.sim/work/a_3802743395_2372691052.didat");
	xsi_register_executes(pe);
}
