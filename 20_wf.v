module ckt1(output L,input A,B,C,D);
wire e,j,g,h,k;  //f to j
and g1(e,A,B);
or g2(j,e,C);
not g3(g,j);
or g4(k,g,D);
xor g5(h,A,j);
//and g5(m,k,1'b1); --> for j s@0
nand g6(L,h,m);
//nand g6(L,h,k);

or g7(m,k,1'b1);
endmodule

module ckt1_tb;
wire L;
reg A,B,C,D;
ckt1 uut(.A(A),.B(B),.C(C),.D(D),.L(L));
initial begin
 A=1'b0;B=1'b0;C=1'b0;D=1'b0; #10;
A=1'b1;B=1'b1;C=1'b1;D=1'b0; #10;


A=1'b0;B=1'b0;C=1'b1;D=1'b0; #10;
A=1'b0;B=1'b1;C=1'b1;D=1'b0; #10;

end
endmodule
