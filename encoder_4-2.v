module encoder_2_4(output a,b,input en,d0,d1,d2,d3);
    or a1(a,d1,d3);
    or a2(b,d2,d3);
endmodule
module test_enc;
    wire a,b;
    reg d0,d1,d2,d3,en;
    encoder_2_4 enc(a,b,en,d0,d1,d2,d3);
    initial
    begin
        $dumpfile("enc_test.vcd");
        $dumpvars(0,test_enc);
        en=1;
        d0=1;d1=0;d2=0;d3=0;
            #20;
        d0=0;d1=1;d2=0;d3=0;
            #20;
        d0=0;d1=0;d2=1;d3=0;
            #20;
        d0=0;d1=0;d2=0;d3=1;
            #20;
    end
endmodule