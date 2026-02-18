//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Fri Nov 28 16:16:26 2025
//Host        : DESKTOP-1CQ16CU running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (PWM_out_0,
    PWM_out_1,
    PWM_out_2,
    PWM_out_3,
    PWM_out_4,
    PWM_out_5);
  output PWM_out_0;
  output PWM_out_1;
  output PWM_out_2;
  output PWM_out_3;
  output PWM_out_4;
  output PWM_out_5;

  wire PWM_out_0;
  wire PWM_out_1;
  wire PWM_out_2;
  wire PWM_out_3;
  wire PWM_out_4;
  wire PWM_out_5;

  design_1 design_1_i
       (.PWM_out_0(PWM_out_0),
        .PWM_out_1(PWM_out_1),
        .PWM_out_2(PWM_out_2),
        .PWM_out_3(PWM_out_3),
        .PWM_out_4(PWM_out_4),
        .PWM_out_5(PWM_out_5));
endmodule
