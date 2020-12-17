module and_or_combination(input a,b,c,d,output y);
    wire a1,a2;
    and g1(a1,a,b);
    and g2(a2,c,d);
    or g3(y,a1,a2);
endmodule
module test_comb;
    reg a,b,c,d;
    wire y;
    and_or_combination obj(a,b,c,d,y);
    initial
    begin
        $dumpfile("andOr_test.vcd");
        $dumpvars(0,test_comb);
        a=0;b=0;c=0;d=0;
            #20;
        a=0;b=1;c=1;d=0;
            #20;
        a=1;b=0;c=0;d=1;
            #20;
        a=1;b=1;c=1;d=1;
            #20;
    end
endmodule