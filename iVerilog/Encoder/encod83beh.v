module encod83beh(in,out,en);
input [7:0] in;
output reg [2:0] out;
input en;

always@(in or en)
begin

if(en)
begin
out=3'd0;
case(in)
8'b00000000 : out=3'b000;
8'b00000001 : out=3'b000;
8'b00000010 : out=3'b001;
8'b00000100 : out=3'b010;
8'b00001000 : out=3'b011;
8'b00010000 : out=3'b100;
8'b00100000 : out=3'b101;
8'b01000000 : out=3'b110;
8'b10000000 : out=3'b111;
default: out=3'd0;
endcase
end
else
out=3'd0;
end
endmodule