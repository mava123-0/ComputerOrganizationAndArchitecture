module orgatedataflow;
reg a,b;
wire orval;
assign orval=a^b;
initial
begin
$monitor("a:%b b:%b orval:%b",a,b,orval);
a=1'b0;
b=1'b0;
#10
a=1'b0;
b=1'b1;
#10
a=1'b1;
b=1'b0;
#10
a=1'b1;
b=1'b1;
end
endmodule 