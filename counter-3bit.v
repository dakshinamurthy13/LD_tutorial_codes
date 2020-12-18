module counter_3_bit(input rst,clk,output reg [2:0]count);
    initial count<=3'b000;
    always @ (posedge (clk))
    if(rst)
        count<=3'b000;
    else
        count<=count+1;
endmodule
module test_mod;
    reg r,c;
    wire [2:0] ct;
    counter_3_bit counter(r,c,ct);
    initial c=1'b0; 
    always #10 c=~c;
    initial
    begin
        $dumpfile("cnt_test.vcd");
        $dumpvars(0,test_mod);
        r=1;
            #20;
        r=0;
            #200;
        r=1;
            #20;
         $finish;
    end
endmodule