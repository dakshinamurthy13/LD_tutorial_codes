module nor_nand_gates(input a,b,output [1:0]c);
    nand x(c[0],a,b);
    nor y(c[1],a,b);
endmodule
module test_gates;
    reg a,b;
    wire [1:0]c;
    nor_nand_gates obj(a,b,c);
    initial
    begin
        $dumpfile("norNand_test.vcd");
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