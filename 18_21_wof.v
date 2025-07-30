module basic(a,b,c,e,l);
input a,b,c,e;
output l;
wire h,i,j,k;
and g1(h,a,b);
and g2(i,b,c);
not g3(j,i);
or g4(k,h,j);
and g5(l,k,e);
endmodule


module basic_tb();
reg a,b,c,e;
wire l;
basic uut(a,b,c,e,l);
initial begin

a=1'b1; b=1'b1; c=1'b1; e=1'b1; #10;
a=1'b0; b=1'b1; c=1'b1; e=1'b1; #10;
a=1'b1; b=1'b1; c=1'b0; e=1'b1; #10;
a=1'b1; b=1'b0; c=1'b1; e=1'b1; #10;
a=1'b0; b=1'b0; c=1'b1; e=1'b1; #10;
a=1'b1; b=1'b0; c=1'b0; e=1'b1; #10;

end
endmodule
