module basic(one,two,three,four,eight);
input one,two,three,four;
output eight;
wire five,six,seven;
or g1(five,two,three,four);
and g2(six,one,two,five);
not g3(seven,five);
nor g4(eight,six,seven);
endmodule


module basic_tb();
reg one,two,three,four;
wire eight;
basic uut(one,two,three,four,eight);
initial begin

one=1'b1; two=1'b1; three=1'b1; four=1'b1; #10;
one=1'b0; two=1'b1; three=1'b1; four=1'b1; #10;
one=1'b1; two=1'b1; three=1'b0; four=1'b1; #10;
one=1'b1; two=1'b0; three=1'b1; four=1'b1; #10;
one=1'b0; two=1'b0; three=1'b0; four=1'b0; #10;
one=1'b1; two=1'b0; three=1'b0; four=1'b1; #10;
one=1'b0; two=1'b0; three=1'b1; four=1'b1; #10;

end
endmodule
