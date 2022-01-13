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

/* This file is designed for use with ISim build 0xb869381d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/HP EliteBook 840 G1/poli/zad/bafer.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_674691591_3620187407(char *, char *, char *, char *, unsigned char );


static void work_a_0968518107_3212880686_p_0(char *t0)
{
    char t17[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    int t15;
    unsigned char t16;
    int t18;

LAB0:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2896);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(82, ng0);
    t4 = (t0 + 5656);
    t9 = (t0 + 2940);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 1U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2976);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3012);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 3048);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 3084);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 684U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB14;

LAB15:    t1 = (unsigned char)0;

LAB16:    if (t1 != 0)
        goto LAB11;

LAB13:    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)2);
    if (t6 == 1)
        goto LAB22;

LAB23:    t1 = (unsigned char)0;

LAB24:    if (t1 != 0)
        goto LAB20;

LAB21:    t2 = (t0 + 776U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB30;

LAB31:    t1 = (unsigned char)0;

LAB32:    if (t1 != 0)
        goto LAB28;

LAB29:
LAB12:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 2144U);
    t4 = *((char **)t2);
    t15 = *((int *)t4);
    t1 = (t15 == 8);
    if (t1 != 0)
        goto LAB36;

LAB38:    t2 = (t0 + 2144U);
    t4 = *((char **)t2);
    t15 = *((int *)t4);
    t1 = (t15 == 0);
    if (t1 != 0)
        goto LAB39;

LAB40:
LAB37:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2144U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 5657);
    t5 = (t0 + 3120);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 5660);
    t5 = (t0 + 3156);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB9;

LAB11:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2144U);
    t8 = *((char **)t2);
    t15 = *((int *)t8);
    t16 = (t15 == 8);
    if (t16 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 5663);
    t5 = (t0 + 2940);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 868U);
    t4 = *((char **)t2);
    t2 = (t0 + 3192);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 8U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1880U);
    t4 = *((char **)t2);
    t2 = (t0 + 3228);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 3U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1880U);
    t4 = *((char **)t2);
    t2 = (t0 + 5576U);
    t5 = ieee_p_3620187407_sub_674691591_3620187407(IEEE_P_3620187407, t17, t4, t2, (unsigned char)3);
    t8 = (t0 + 3120);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 3U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2144U);
    t4 = *((char **)t2);
    t15 = *((int *)t4);
    t18 = (t15 + 1);
    t2 = (t0 + 2144U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = t18;

LAB18:    goto LAB12;

LAB14:    t2 = (t0 + 960U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t14 = (t7 == (unsigned char)2);
    t1 = t14;
    goto LAB16;

LAB17:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 3048);
    t9 = (t2 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB18;

LAB20:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2144U);
    t8 = *((char **)t2);
    t15 = *((int *)t8);
    t16 = (t15 == 0);
    if (t16 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1972U);
    t4 = *((char **)t2);
    t2 = (t0 + 3264);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 3U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 1972U);
    t4 = *((char **)t2);
    t2 = (t0 + 5592U);
    t5 = ieee_p_3620187407_sub_674691591_3620187407(IEEE_P_3620187407, t17, t4, t2, (unsigned char)3);
    t8 = (t0 + 3156);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 3U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 2144U);
    t4 = *((char **)t2);
    t15 = *((int *)t4);
    t18 = (t15 - 1);
    t2 = (t0 + 2144U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = t18;

LAB26:    goto LAB12;

LAB22:    t2 = (t0 + 960U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t14 = (t7 == (unsigned char)3);
    t1 = t14;
    goto LAB24;

LAB25:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3084);
    t9 = (t2 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB26;

LAB28:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 2144U);
    t8 = *((char **)t2);
    t15 = *((int *)t8);
    t16 = (t15 == 0);
    if (t16 != 0)
        goto LAB33;

LAB35:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 1972U);
    t4 = *((char **)t2);
    t2 = (t0 + 3264);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 3U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 1972U);
    t4 = *((char **)t2);
    t2 = (t0 + 5592U);
    t5 = ieee_p_3620187407_sub_674691591_3620187407(IEEE_P_3620187407, t17, t4, t2, (unsigned char)3);
    t8 = (t0 + 3156);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 3U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 2144U);
    t4 = *((char **)t2);
    t15 = *((int *)t4);
    t18 = (t15 - 1);
    t2 = (t0 + 2144U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = t18;

LAB34:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 5664);
    t5 = (t0 + 2940);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 868U);
    t4 = *((char **)t2);
    t2 = (t0 + 3192);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 8U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 1880U);
    t4 = *((char **)t2);
    t2 = (t0 + 3228);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 3U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 1880U);
    t4 = *((char **)t2);
    t2 = (t0 + 5576U);
    t5 = ieee_p_3620187407_sub_674691591_3620187407(IEEE_P_3620187407, t17, t4, t2, (unsigned char)3);
    t8 = (t0 + 3120);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 3U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2144U);
    t4 = *((char **)t2);
    t15 = *((int *)t4);
    t18 = (t15 + 1);
    t2 = (t0 + 2144U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = t18;
    goto LAB12;

LAB30:    t2 = (t0 + 960U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t14 = (t7 == (unsigned char)3);
    t1 = t14;
    goto LAB32;

LAB33:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 3084);
    t9 = (t2 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB34;

LAB36:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 2976);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB37;

LAB39:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 3012);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB37;

}


extern void work_a_0968518107_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0968518107_3212880686_p_0};
	xsi_register_didat("work_a_0968518107_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_0968518107_3212880686.didat");
	xsi_register_executes(pe);
}
