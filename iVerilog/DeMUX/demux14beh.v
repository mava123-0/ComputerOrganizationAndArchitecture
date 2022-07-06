module demux14beh(s,out,din);
input din;
input [1:0] s;
output reg [3:0] out;

always@(out,s)
begin
if(din)
begin
out=3'd0;
case (s)
2'b00 : out[0]=1;
2'b01 : out[1]=1;
2'b10 : out[2]=1;
2'b11 : out[3]=1;
endcase
end
else
out=3'd0;
end
endmodule