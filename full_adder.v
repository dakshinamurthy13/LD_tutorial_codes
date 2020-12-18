module adder(input a,b,cin,output s,cout);
    assign s=a^b^cin;
    assign cout=(a&b)|(a&cin)|(b&cin);
endmodule
module test;
    reg a ,b, cin;
    wire s,cout;
    adder fa(a,b,cin,s,cout);
    initial 
        begin
            $dumpfile("fa.vcd");
            $dumpvars(0,test);
                a=1;
                b=1;
                cin=0;
                    #10;
                a=1;
                b=1;
                cin=1;
                    #10;
                a=1;
                b=0;
                cin=0;
                    #10;
                a=0;
                b=1;
                cin=1;
                    #10;
                $finish;
        end
endmodule