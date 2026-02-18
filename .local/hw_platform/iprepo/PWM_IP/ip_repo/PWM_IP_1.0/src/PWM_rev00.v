`timescale 1ns / 1ps
module PWM_rev00(
    input clk,
    input n_rst,
    input [19:0] SIZE,
    input [19:0] DUTY_CYCLE,
    input valid,
    
    output PWM_out
);
    reg [19:0] counter;
    reg [19:0] SIZE_D;
    reg [19:0] DUTY_CYCLE_D;
    reg wave;
    
    wire size_reset; 
    wire DUTY_CYCLE_reset;
    //SIZE
    always @(posedge clk or negedge n_rst)
        if(!n_rst)
            SIZE_D <= 20'b0;
        else
            SIZE_D <= SIZE;
    assign size_reset = (SIZE_D!=SIZE)?1:0;       
     
    //DUTY_SIZE_D
    always @(posedge clk or negedge n_rst)
        if(!n_rst)
            DUTY_CYCLE_D <= 20'b0;
        else
            DUTY_CYCLE_D <= DUTY_CYCLE;
    assign DUTY_CYCLE_reset = (DUTY_CYCLE_D!=DUTY_CYCLE)?1:0;
    
    // period
    always @(posedge clk or negedge n_rst)
        if(!n_rst)
            counter <= 20'b0;
        else
        begin
            if(size_reset || DUTY_CYCLE_reset)
                  counter <= 20'b0;
            else
            begin     
                if(counter<(SIZE_D-1))
                    counter <= counter + 1;
                else
                    counter <= 20'b0;
            end
        end

    
    // duty_cycle
    always @(posedge clk or negedge n_rst)
        if(!n_rst)
            wave <=0;
        else
        begin
            if(size_reset || DUTY_CYCLE_reset)
              wave <= 0;
              else
              begin
                if(counter<DUTY_CYCLE_D)  
                    wave <= 1;
                else
                    wave <= 0;
              end
        end

   assign PWM_out = (valid) ? wave : 0;

endmodule 