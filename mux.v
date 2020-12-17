module mux4to1(output y,input en,d0,d1,d2,d3,a,b);
	wire and1,and2,and3,and4;
	and a1(and1,d0,~a,~b);
	and a2(and2,d1,~a,b);
	and a3(and3,d2,a,~b);
	and a4(and4,d3,a,b);
	or o(y,and1,and2,and3,and4);
endmodule
module mux_tb;
	reg d0,d1,d2,d3,a,b,en;
	wire y;
	mux4to1 mux(y,en,d0,d1,d2,d3,a,b);
	initial
	begin
		$dumpfile("mux_test.vcd");
		$dumpvars(0,mux_tb);
		en=1;
		d0=1'b0;d1=1'b0;d2=1'b0;d3=1'b0;a=1'b0;b=1'b0;
			#10;
		d0=1'b1;d1=1'b0;d2=1'b0;d3=1'b0;a=1'b0;b=1'b0;
			#10;
		d0=1'b0;d1=1'b0;d2=1'b0;d3=1'b0;a=1'b0;b=1'b1;
			#10;
		d0=1'b0;d1=1'b1;d2=1'b0;d3=1'b0;a=1'b0;b=1'b1;
			#10;
		d0=1'b0;d1=1'b0;d2=1'b0;d3=1'b0;a=1'b1;b=1'b0;
			#10;
		d0=1'b0;d1=1'b0;d2=1'b1;d3=1'b0;a=1'b1;b=1'b0;
			#10;
		d0=1'b0;d1=1'b0;d2=1'b0;d3=1'b0;a=1'b1;b=1'b1;
			#10;
		d0=1'b0;d1=1'b0;d2=1'b0;d3=1'b1;a=1'b1;b=1'b1;
			#10;
	end
endmodule
	