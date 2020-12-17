module decoder_2_4(input en,a,b,output d0,d1,d2,d3);
    and a1(d0,~a,~b);
    and a2(d1,~a,b);
    and a3(d2,a,~b);
    and a4(d3,a,b);
endmodule
module test_dec;
    reg a,b,en;
    wire d0,d1,d2,d3;
    decoder_2_4 dec(en,a,b,d0,d1,d2,d3);
    initial
    begin
        $dumpfile("dec_test.vcd");
        $dumpvars(0,test_dec);
        en=1;
        a=0;b=0;
            #20;
        a=0;b=1;
            #20;
        a=1;b=0;
            #20;
        a=1;b=1;
            #20;
    end
endmodule