module ckt1(output l,input a,b,c,d);
wire e,f,g,h,k;
and g1(e,a,b);
or g2(f,e,c);
not g3(g,f);
or g4(k,g,d);
xor g5(h,a,f);
//and g5(m,k,1'b1); --> for j s@0
nand g6(l,h,k);
//nand g6(L,h,k);

endmodule


module ckt1_tb;
wire l;
reg a,b,c,d;
ckt1 uut(.a(a),.b(b),.c(c),.d(d),.l(l));
initial begin
a=1'b0; b=1'b0; c=1'b0; d=1'b0; #10;
a=1'b1; b=1'b1; c=1'b1; d=1'b1; #10;
a=1'b0; b=1'b1; c=1'b1; d=1'b1; #10;
a=1'b1; b=1'b1; c=1'b0; d=1'b1; #10;
a=1'b1; b=1'b0; c=1'b1; d=1'b1; #10;
a=1'b0; b=1'b0; c=1'b1; d=1'b1; #10;
a=1'b1; b=1'b0; c=1'b0; d=1'b1; #10;

end
endmodule
