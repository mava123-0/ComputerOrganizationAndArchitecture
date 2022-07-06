module encod83beh_tb;
reg [7:0] in;
reg en;
wire [2:0] out;

encod83beh enc(.in(in),.out(out),.en(en));
initial
begin
$monitor("en=%b in=%b out=%b", en,in,out);

en=1'b1;
in=8'b00000000;
#10
en=1'b1;
in=8'b00000001;
#10
en=1'b1;
in=8'b00000010;
#10
en=1'b1;
in=8'b00000100;
#10
en=1'b1;
in=8'b00001000;
#10
en=1'b1;
in=8'b00010000;
#10
en=1'b1;
in=8'b00100000;
#10
en=1'b1;
in=8'b01000000;
#10
en=1'b1;
in=8'b10000000;

end
endmodule