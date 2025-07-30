module counter (
    input clk,
    input rst,
    output [3:0] count
);
    reg [3:0] count_reg;

    always @(posedge clk or posedge rst) begin
        if (rst)
            count_reg <= 4'b0;
        else
            count_reg <= count_reg + 1;
    end

    assign count = count_reg;
endmodule

module signature_analyser (
    input clk,
    input rst,
    input  in,
    output [3:0] q_next
);
    reg [3:0] q;

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 4'b0001;
        else
            q <= {q[2:0], q[1]^in};
            
    end

    assign q_next = q;
endmodule


 module main(
    input clk,
    input rst,
    output [3:0] signature
);
    wire [3:0]count;
wire in;

    counter g1(.clk(clk),.rst(rst),.count(count));

    signature_analyser g2 (.clk(clk),.rst(rst),.in(count[3]),.q_next(signature));
endmodule


module tb();
reg clk;
reg reset;
wire [3:0]signature;
wire [3:0]q;
main uut(clk,reset,signature);
always #5 clk=~clk ;
initial begin
clk=0;
reset=1;
#10; reset=0;
#100;
reset=1;
#10;
$stop;
end
endmodule


