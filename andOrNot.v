module and_or_not_gates(input a,b,output [2:0]c);
    and x(c[0],a,b);
    or y(c[1],a,b);
    not z(c[2],a);
endmodule
module test_gates;
    reg a,b;
    wire [2:0]c;
    and_or_not_gates obj(a,b,c);
    initial
    begin
        $dumpfile("andornot_test.vcd");
        $dumpvars(0,test_gates);
        a=1'b0;
        b=1'b0;
            #20;
        a=1'b0;
        b=1'b1;
            #20;
        a=1'b1;
        b=1'b0;
            #20;
        a=1'b1;
        b=1'b1;
            #20;    
    end
endmodule
