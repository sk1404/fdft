module basic(a,b,c,e,l);
input a,b,c,e;
output l;
wire h,i,j,k,error;
and g1(h,a,error);
and g2(i,error,c);
not g3(j,i);
or g4(k,h,j);
and g5(l,k,e);
and g6(error,1'b0,b);
endmodule


module basic_tb();
reg a,b,c,e;
wire l;
basic uut(a,b,c,e,l);
initial begin

a=0; b=0; c=0; e=0; #10;
a=0; b=1; c=1; e=1; #10;

a=1; b=0; c=1; e=1; #10;
a=1; b=1; c=0; e=1; #10;

end
endmodule
