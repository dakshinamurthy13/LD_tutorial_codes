module Rshiftregister(input clk,clrb,SDR,output reg[3:0]Q);
    always @ (posedge(clk),negedge(clrb))
    if(~clrb)
        Q<=4'b0000;
    else
        Q<={SDR,Q[3:1]};
endmodule
module test_Rshiftregister;
    reg clk,clrb,SDR;
    wire [3:0]Q;
    Rshiftregister RS(clk,clrb,SDR,Q);
    initial clk =1'b0;
    always #10 clk=~clk;
    initial
    begin
            $dumpfile("test_ShReg.vcd");
            $dumpvars(0,test_Rshiftregister);
            clrb=0;
            SDR=1;
                #20;
            clrb=1;
            SDR=1;
                #20;
            SDR=0;
                #20;
            SDR=1;
                #20;
            SDR=0;
                #20;
            clrb=0;
                #20;    
            $finish;
    end
endmodule