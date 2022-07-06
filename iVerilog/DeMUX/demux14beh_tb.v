module demux14beh_tb;
reg din;
reg [1:0] s;
wire [3:0] out;

demux14beh demb(.s(s),.out(out),.din(din));
initial
begin
$monitor("din=%b s=%b out=%b",din,s,out);

din=1'b0;
s=2'b00;
#10
din=1'b0;
s=2'b01;
#10
din=1'b0;
s=2'b10;
#10
din=1'b0;
s=2'b11;
#10
din=1'b1;
s=2'b00;
#10
din=1'b1;
s=2'b01;
#10
din=1'b1;
s=2'b10;
#10
din=1'b1;
s=2'b11;

end
endmodule